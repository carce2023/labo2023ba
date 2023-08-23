# Define la función particionar
particionar <- function(
  data, division, agrupa = "",
  campo = "fold", start = 1, seed = NA) {
  if (!is.na(seed)) set.seed(seed)
  
  bloque <- unlist(mapply(function(x, y) {
    rep(y, x)
  }, division, seq(from = start, length.out = length(division))))

  data[, (campo) := sample(rep(bloque, ceiling(.N / length(bloque))))[1:.N],
    by = agrupa
  ]
}

# Llama a la función particionar con tus datos
# Por ejemplo, aquí asumiendo que tienes un dataframe llamado "mi_dataset"
particionar(data = dataset_pequeno, division = c(70, 30), agrupa = "clase_ternaria", seed = 123)
