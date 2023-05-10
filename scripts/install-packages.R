installa_load_packages <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# lista de pacotes necessários
packages <- c("sparklyr",
             "ggcorrplot",
             "dplyr",
             "caret",
             "nlme",
             "ggplot2",
             "carrier",
             "mlflow",
             "reticulate",
             "stats",
             "glue")

# instalar e carregar os pacotes
installa_load_packages(packages)