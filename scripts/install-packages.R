instalar_carregar_pacotes <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# alterar caminho da variável de ambiente do python
Sys.setenv(MLFLOW_BIN="./venv/Scripts/mlflow")

# alterar caminho da variável de ambiente do python
Sys.setenv(MLFLOW_PYTHON_BIN="./venv/Scripts/python")

# lista de pacotes necessários
pacotes <- c("sparklyr", 
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
instalar_carregar_pacotes(pacotes)