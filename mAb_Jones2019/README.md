# About
A whole-body PBPK model of monoclonal antibody (mAb) distribution is implemented in Julia and R (mrgsolve).
The entire model structure and parameterization for IgG distribution are based on this publication [Jones et al., CPT: Pharmacometrics & Systems Pharmacology, 2019](https://doi.org/10.1002/psp4.12461).

A Julia language-based implementation of the *Jones et al* model is currently available as open-source code in the `julia` folder.

# Near-term development
We anticipate incorporating the following items into near-term releases:

## mrgsolve
1. Publishing an R-based mrgsolve version of mAb_Jones2019 model

## julia
1. Providing model parametrization for mice, rats, and monkeys
2. Generic antigen expression in tissues
3. Addition of a tumor compartment (a homogenous receptor agonist) model to the systemic PBPK model
