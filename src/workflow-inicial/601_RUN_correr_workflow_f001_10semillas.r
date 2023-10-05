# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida del workflow con 10 semillas mas 

source("~/labo2023ba/src/workflow-inicial/661_ZZ_final_f001_10semillas.r")
