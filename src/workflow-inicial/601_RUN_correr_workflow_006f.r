# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/611_CA_reparar_dataset_006f.r")
source("~/labo2023ba/src/workflow-inicial/621_DR_corregir_drifting_006f.r")
source("~/labo2023ba/src/workflow-inicial/631_FE_historia_006f.r")
source("~/labo2023ba/src/workflow-inicial/641_TS_training_strategy_006f.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/651_HT_lightgbm_006f.r")
source("~/labo2023ba/src/workflow-inicial/661_ZZ_final_006f.r")
