# Rendering rmarkdown Exposure Reports

# Function

render_one <- function(name) {
  rmarkdown::render(
    'SouthernIntermountain.Rmd',
    output_file = paste0(name, '.docx'),
    params = list(name = name),
    envir = parent.frame()
  )
}

# Iterate

# choice of parks
choices <- c("FOUN", "TUZI")

for (name in choices) {
  render_one(name)
}





