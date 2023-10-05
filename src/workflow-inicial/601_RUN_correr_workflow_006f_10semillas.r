# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida del workflow.

# Agrego 10 semillas mas
source("~/labo2023ba/src/workflow-inicial/661_ZZ_final_006f_10semillas.r")
