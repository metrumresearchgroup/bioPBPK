# About
A whole-body PBPK model of monoclonal antibody (mAb) distribution is implemented in Julia as an application.
The entire model structure and parameters for IgG distribution are based on this publication [Jones et al., CPT: Pharmacometrics & Systems Pharmacology, 2019](https://doi.org/10.1002/psp4.12461).

# Near-term development
We anticipate incorporating the following items into a near-term release:
1. Providing model parametrization for mice, rats, and monkeys
2. Generic antigen expression in tissues
3. Addition of a tumor compartment (a homogenous receptor agonist) model to the systemic PBPK model

# Prerequisites
Julia version 1.5.3 and the following Julia packages:
1. DifferentialEquations
2. RecursiveArrayTools
3. Plots
4. Logging
5. TerminalLoggers
6. CSV
7. DataFrames

# Contents
This application contains the following files
1. `jonesODEs.jl`   (The ode file containing the system of equations in the model)
2. `runJones.jl`    (The script used to run a simulation of the model)
3. `runTest.jl`     (Test script for verifying user results against the reference results stored in 'test')
4. `Project.toml`   (The project file lists the application dependencies)
5. `Manifest.toml`  (The manifest file is an absolute record of the state of the packages in the environment)
6. `README.md`      (This readme file)

And folders:
1. `img`            (The graphs used in this readme file are stored here)
2. `test`           (Reference results for testing are stored in `RefSolACSINS_0.csv` file)


# Setup
Clone the entire repo to your local system, and then switch directory to the folder containing this application. All files should be in the same local folder and the above Julia packages should be installed and imported before running a simulation using the `runJones.jl` script.

Alternatively, you can use the provided `Project.toml` and `Manifest.toml` to create a static environment that is an exact snapshot of the environment we used to produce the outputs in this README.md file. For this, after running julia in the main root of this local folder, enter package `Pkg` environment and issue:

```julia
activate .
instantiate
```
And, then you can run a simulation using the `runJones.jl` script.

# Model use cases and examples
## Running a simulation
To run a simulation of mAb distribution in `humans`, set the IV bolus dose and specify the AC-SINS score and the molecular weight (MW) of the mAb.
All other physiological/mechanistic parameters are optimized for IgG distribution in humans.

For example, below we simulate a mAb with `AC-SINS score = 0`, and a `MW = 150 kDa` with an IV bolus `dose = 5 mg/kg`.
```julia
# mAb IV Dose
Dose_in_mgkg = 5.0; # [mg/kg]
# mAb AC-SINS score
ACSINS_score = 0;
# mAb molecular weight
MW_EDG = 150000.0; # Da
```

## Effect of AC-SINS score on half life
We obtained half life using a non‐compartmental analysis (NCA) performed in R [(PKNCA package)](https://cran.r-project.org/web/packages/PKNCA/index.html) for various `AC-SINS` scores. The plasma concentrations used for NCA analysis were obtained for `dose = 5 mg/kg`.

<p align="center">
  <img src="https://github.com/metrumresearchgroup/bioPBPK/blob/main/mAb_Jones2019/julia/img/HalfLife_CL_Dose5.png" width="500">
</p>

# Verification

## Verification of the model implementation
We have verified our Julia implementation against the original Berkeley Madonna model implementation. For this, we compared the results (plasma concentrations) of the Julia simulations against those of the Berkeley Madonna model provided by the Jones_et_al publication for `AC-SINS scores` of `0, 5, and 10`. Solid lines are Julia solutions, filled circles of the same color represent the corresponding Berkeley Madonna simulation results.

<p align="center">
  <img src="https://github.com/metrumresearchgroup/bioPBPK/blob/main/mAb_Jones2019/julia/img/ACSINS_score.png" width="600">
</p>


## Verification of the user's installation
To verify user's local application, cloned from here, and the installed Julia packages, you can run the testing script `runTest.jl`. This will obtain the solution for `AC-SINS = 0`, compare plasma concentration against the reference solution stored in the `test` folder, and show the maximum relative error between these solutions. The output for a verified application will be something like this:

```
Your local application reproduces the reference solution (plasma conc (µg/ml), AC-SINS = 0)!
Max Rel Error (%) is: 0.0
```
The `Max Rel Error` could obviously be different from `0.0` but hopefully a very small number.
