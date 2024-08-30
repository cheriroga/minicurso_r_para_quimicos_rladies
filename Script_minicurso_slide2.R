### Tratamento de dados

## Importando a base de dados

library(readxl)
dados <- read_excel(path = "petro.xls",na="NA", sheet = "Refino")
dados


### Nome das variáveis
## Funções tidyverse e janitor

library(tidyverse)
library(janitor)

names(dados)

dados <- clean_names(dados) # a função clean_names() para primeiro ajuste dos nomes das variaveis
names(dados)

### Linhas e colunas vazias

dados <- remove_empty(dados,"rows")

dados <- remove_empty(dados,"cols")
names(dados)

### Identificação de casos duplicados

get_dupes(dados, id)

library(dplyr)
dados1 <-  distinct(dados,id, .keep_all = TRUE)
dados1
