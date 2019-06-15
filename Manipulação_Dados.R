# le dados digitados pelo usuário
x <- scan()
# ler tabela
tabela <- read.table(file.choose(),
                     header = TRUE,
                     sep = ";",
                     quote = "\"",
                     dec = ",")
summary(tabela)
# ler csv
dados <- dados <- read.csv(file="C:/Users/Alex/Desktop/Projetos/R/notas.csv",
                           header = TRUE,
                           stringsAsFactors = FALSE)
str(dados)
head(dados)
tail(dados)
summary(dados)
# ler excel
install.packages("gdata")
library(gdata)
read.xls(file="C:/Users/Alex/Desktop/Projetos/R/dados_excel.xlsx",
         sheet = "Plan1", header = TRUE, dec = ",")
# salvando funcao
quadrado <- function(x,y){
  return(x^y)
}
dput(quadrado, file="C:/Users/Alex/Desktop/Projetos/R/quadrado.R")
teste = dget(file="C:/Users/Alex/Desktop/Projetos/R/quadrado.R")
rm(teste)
# dump do estado de execução
dump(ls(), file="C:/Users/Alex/Desktop/Projetos/R/dump.R")
# concatenar dataframer
#merge()
