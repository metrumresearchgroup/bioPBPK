# Import packages required to run the model, and test it against ref. solution
# note: these packages need to be imported only ONCE in each Julia session.
using DifferentialEquations
using RecursiveArrayTools
using Plots
using CSV
using DataFrames

# The ode file containing the system of equations in the model
# note: this file needs to be included only ONCE in each Julia session, 
# of course if the file itself is not modified in that session.
include("jonesODEs.jl")


# Set initial conditions/parameters
# mAb IV Dose
Dose_in_mgkg = 5.0; # [mg/kg]
# mAb AC-SINS score
ACSINS_score = 0;
# mAb molecular weight
MW_EDG = 150000.0; # Da


# all other parameters/initial values are taken from this publication:
# Jones et al., CPT: Pharmacometrics & Systems Pharmacology, 2019
# link:  https://doi.org/10.1002/psp4.12461
FcRn_Conc = 44.093; # [uM]  
BW = 71.0; # kg
V_Plasma = 3.126; # [L]. value for human
EDG_mg_ml = 10.0;  # [mg/mL]
C_EXG_Plasma0 =  Dose_in_mgkg*BW/(V_Plasma*1000)/MW_EDG*1E6; # [uM]
C_EDG_Plasma0 =  EDG_mg_ml/MW_EDG*1E6; # [uM]
C_EDG_LN0 = 1E-18*1E6; # [uM]
C_EDG0 =  1E-18*1E6 * ones(15,17); # [uM]
C_EXG_LN0 = 1E-18*1E6; # [uM]
C_EXG0 =  1E-18*1E6 *ones(15,19); # [uM]
C_FcRn_E6a0 =  ones(15)*FcRn_Conc; # [uM]
C_FcRn_E7b0 =  ones(15)*FcRn_Conc; # [uM] 
C_FcRn_E70 =  ones(15)*FcRn_Conc; # [uM]      
C_FcRn_ISM0 =  ones(15)*FcRn_Conc*1E-4; # [uM] 
C_FcRn_VM0 =  ones(15)*FcRn_Conc*1E-4; # [uM]  

# ArrayPartitions from `RecursiveArrayTools.jl` is used to pre-allocate a single array
# that contains all model variables and their time derivatives `u0`, and `du0`, respectively!
u0 = ArrayPartition([C_EXG_Plasma0],[C_EDG_Plasma0],[C_EDG_LN0],C_EDG0,[C_EXG_LN0],C_EXG0,C_FcRn_E6a0,C_FcRn_E7b0,C_FcRn_E7b0,C_FcRn_ISM0,C_FcRn_VM0);
du0 = 0.0.*similar(u0);

# Define the simulation timespan
tspan = (0.0,2000);  # hr

# provide a list of parameters required by the ode system
par = [ACSINS_score];

# Define an ode problem
# note; the JonesODEs! is a function defined in `JonesODEs.jl`
prob = ODEProblem(jonesODEs!,u0,tspan,par);

# Solve the system of ODEs to get the solution `sol`
sol = solve(prob,saveat=10, abstol = 1e-6, reltol = 1e-6, alg=AutoTsit5(Rosenbrock23()));

# Extract the exogenous mAb concentration in plasma from the solution `sol`
cplasma = [sol.u[i].x[1][1] for i in 1:length(sol.t)];

# convert mAb plasma concentration from µM to µg/ml
cplasma_mug_ml = cplasma * MW_EDG/1000;


# run the test against the ref. solution
# Let's compare the plasma concentrations from your solution
# to that of the reference solution, oibtained for = AC-SINS = 0,
# and stored in 'test' folder in 'RefSolACSINS_0.csv' 

# the threshold for (%)relative error
relErroCut = 1E-4;

try 
    # Read in reference results
    if Sys.iswindows()
        df = CSV.read("test\\RefSolACSINS_0.csv", DataFrame);
    else
        df = CSV.read("test/RefSolACSINS_0.csv", DataFrame);
    end
    
    # extract the plasma concentration
    RefConc = df[:,2];

    # Relative error (%) between the two solutions
    relError = (RefConc - cplasma_mug_ml)./RefConc*100.0;
    absRelError = broadcast(abs, relError);
    maxError = max(absRelError...);

    # see if your relative error is smaller than the threshold value
    if maxError<relErroCut
        println("Your local application reproduces the reference solution (plasma conc (µg/ml), AC-SINS = 0)!")
        println("Max Rel Error (%) is: ", maxError)
    else
        println("Your local application does not reproduce the reference solution!")
        println(String("Max Rel Error (%) $maxError is greater than the $relErroCut threshold!"))
    end

    # plot the results
    plot(df[:,1],df[:,2], yaxis=:log10, label = "reference solution", color = 2);
    plot!(sol.t,cplasma_mug_ml, seriestype = :scatter, label="your solution");
    ylims!(1, 1000);
    yticks!([1, 10, 100, 1000], ["1", "10", "100", "1000"]);
    xlims!(-1.0, 2010);
    xticks!([0.0, 1000, 2000], ["0", "1000", "2000"]);
    xlabel!("Time (hr)");
    ylabel!("Plasma conc (µg/ml)")

catch e
    println("Something unexpected happened!")
end
