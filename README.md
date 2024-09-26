
<!-- README.md is generated from README.Rmd. Please edit that file -->

# <u>U</u>nited <u>S</u>tates <u>En</u>ergy <u>Sys</u>tem Optimization Model

<div class="warn">

> :warning: **This package is under development.**  
> The expected release date of the first minimal *beta*-version is
> 2024-09-30. Docs in progress: <https://usensys.github.io/usensys/>

</div>

**USENSYS** is a linear programming optimization model of the US energy
system. This class of models is known as **Macro Energy Models** or
**Reference Energy System Models** or **Capacity Expansion Models** (for
electric power sector) optimize capacity expansion of alternative
technologies under alternative resource and policy constraints and
assumptions.  
**usensys** r-package is an R-interface to the model with a set of
functions to run the model, analyze the results, and visualize the data.
The model is designed to be used for policy analysis, scenario analysis,
and long-term planning of the energy system. The model is based on the
open-source R-package **energyRt** and is designed to be used in
combination with other R-packages for data analysis, visualization, and
optimization.

<!-- badges: start -->
<!-- badges: end -->

## Versions

Several versions of the model are available with different status of
development, all will be included in the package. The versions differ in
the geographical scope of the model and regional aggregation, the data
sources, and/or replication of existing models by EPA, NREL, and others.
The current coverage of economic sectors is currently focused on the
electric power sector, but the model is designed to be extended to other
sectors in the future. The following versions are currently in
preparation for the release:

- **26-zones**: The model is based on 26 zones (NERC subscriptions) of
  the United States. This version has been a part of the Multimodel
  Intercomparison Project (MIP) and is based on the PowerGenome data.
- **50-states**: The model is based on the 50 states of the United
  States, including Alaska and Hawaii. The datasets are based on the EIA
  data and the NREL ATB. This regional division might be helpful for for
  integration with other sectors and for state-level policy analysis.
- **IPM**: The model is based on the IPM model by EPA. The datasets are
  based on the IPM data and the NREL ATB.
- **IMMX**: The model is an extension of the IPM model by EPA with added
  Mexican states.
- **ReEDS**: The model is a replica of ReEDS model by NREL with imported
  data from the ReEDS model repository.

## Prerequisites

One of the following optimization software is required to run the
model: - Julia with JuMP - Python with Pyomo - GAMS - GLPK/MathProg (for
small problems only)

Large problems require a commercial solver, such as CPLEX or Gurobi.
Smoler models can be solved with open-source solvers, such as HiGSS,
CBC, or GLPK.

## Installation

You can install the development version of usensys from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pkg_install("energyRt/energyRt")
pak::pkg_install("usensys/usensys")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(usensys)
## basic example code
```

:construction: **This document is under construction.** :construction:
