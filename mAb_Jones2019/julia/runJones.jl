
# Import packages required to run the model
# note: these packages need to be imported only ONCE in each Julia session.
using DifferentialEquations
using RecursiveArrayTools
using Plots
using Logging: global_logger
using TerminalLoggers: TerminalLogger
global_logger(TerminalLogger())

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
tspan = (0.0,1000);  # hr

# provide a list of parameters required by the ode system
par = [ACSINS_score];

# Define an ode problem
# note; the JonesODEs! is a function defined in `JonesODEs.jl`
prob = ODEProblem(jonesODEs!,u0,tspan,par);

# Solve the system of ODEs to get the solution `sol`
sol = solve(prob,progress=true,progress_steps=1,alg=AutoTsit5(Rosenbrock23()));

# Extract the exogenous mAb concentration in plasma from the solution `sol`
cplasma = [sol.u[i].x[1][1] for i in 1:length(sol.t)];

# Plot mAb plasma concentration (ug/ml) vs time
# convert conc from uM to ug/ml
cplasma_mg_ml = cplasma * MW_EDG/1000;

plot(sol.t,cplasma_mg_ml, yaxis=:log10, label="AC-SINS = 0");
ylims!(1, 1000);
yticks!([1, 10, 100, 1000], ["1", "10", "100", "1000"]);
xlims!(0.0, 1000);
xticks!([0.0, 500, 1000], ["0", "500", "1000"]);
xlabel!("Time (hr)");
ylabel!("Plasma conc (µg/ml)")
