# memory managements in GAMS: https://support.gams.com/solver:error_1001_out_of_memory
{gams_options <- "
*$exit
energyRt.holdfixed = 1;
*energyRt.dictfile = 0;
*option solvelink = 0;
*option InteractiveSolver = 1;
option iterlim = 1e9;
option reslim = 1e7;
option threads = 12;
*option LP = CPLEX;
energyRt.OptFile = 1;
*option savepoint = 1;
*option bRatio = 0;
*execute_loadpoint 'energyRt_p';
$onecho > cplex.opt
interactive 1
advind 0
* predual 1
* BarStartAlg 4
*tuningtilim 2400
aggcutlim 3
aggfill 10
aggind 25
bardisplay 2
parallelmode -1
lpmethod 6
*printoptions 1
names no
freegamsmodel 1
*memoryemphasis 1 
threads 0
$offecho
*$exit
"} # GAMS options ####

# {cplex_options <- "
# interactive 1
# CPXPARAM_Advance 0
# *tuningtilim 2400
# aggcutlim 3
# aggfill 10
# aggind 25
# bardisplay 2
# parallelmode -1
# lpmethod 6
# *printoptions 1
# names no
# *freegamsmodel 1
# *memoryemphasis 1 
# threads -1
# "} # CPLEX parameters ####

{inc4 <- 
  "parameter zModelStat;
zModelStat = energyRt.ModelStat; 
execute_unload 'USENSYS_scenario.gdx';"} # inc4.gms 

# if (F) { # Save the workspace (mannual)
# save.image(file = USENSYS$file)
# load(USENSYS$file)
# }

GAMS <- list(
  lang = "GAMS",
  export_format = "gdx",
  inc3 = gams_options
)

PYOMO <- list(
  lang = "PYOMO"
  # files = list(
  #   cplex.opt = cplex_options
  # )
)

JuMP = list(
  lang = "JuMP"
  # files = list(
  #   cplex.opt = cplex_options
  # )
)

