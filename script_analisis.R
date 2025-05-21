
# Cargar librerías
library(tidyverse)

# Crear un data frame de ejemplo
datos <- tibble(
  sitio = c("A", "B", "C"),
  mamiferos = c(5, 2, 9),
  aves = c(12, 8, 15)
)

# Calcular totales
datos <- datos %>%
  mutate(total = mamiferos + aves)

# Agrego una columna de proporción de mamíferos
datos <- datos %>%
  mutate(prop_mamiferos = mamiferos / total)

# Ver resultados
print(datos)

# Guardar como CSV
write_csv(datos, "resultados_totales.csv")
