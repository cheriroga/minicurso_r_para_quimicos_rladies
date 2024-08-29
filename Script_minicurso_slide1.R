### R como calculadora
#adição
10+15

#subtração
10-2

#multiplicação
2*10

#divisão
30/2

#raiz quadrada
sqrt(4)

#potência
2^2

### Atribuição
x <- 10/2
x
X
# Por que tivemos um erro acima?


## Atribuir a "x" a string banana

x <- banana
x <- "banana"
x

banana <- 30
x <- banana
x

## Função class()

y <- "ola"
class(y)

x <- 2.5
class(x)

## Apagar objetos

x <- 20
x
remove(x)
x

## Limpar o console

rm(list=ls())


### Vetor

x <- c(2,3,4)
x

y <- seq(1:10)
y

z <- rep(1,10)
z

a <- 1:10
a

bicho <-c("macaco","pato","galinha","porco")
bicho

bicho[2] # vizualizar o conteúdo da posição 2 do vetor bicho

## Operações vetoriais

k <- x*2

y <- c(x,k)
y

## Calcular o IMC de 6 pessoas?
peso <- c(62, 70, 52, 98, 90, 70)
altura <- c(1.70, 1.82, 1.75, 1.94, 1.84, 1.61)
imc <- peso/(altura^2)
imc

## Função length()
length(imc)


### Matrizes
x <- matrix(seq(1:16), nrow=4,ncol=4)
x

x[2,3] #retorna o elemento na segunda linha e terceira coluna da matriz

x[3,  ]   # seleciona a 3ª linha

x[ , 2]   # seleciona a 2ª coluna

x[1,] <- c(13,15,19,30)  #substituir a primeira linha por (13,15,19,30)

x

## dimensão da matriz x

dim(x)

## Concatenar linhas em uma matriz

vet <- c(2,20,12,34)
x2 <- rbind(x,vet)
x2

## Concatenar colunas em uma matriz

v2 <- c(25,10,15,4)
x3 <- cbind(x,v2)
x3

## Operações matriciais

xa <- x2[1:2,1:2]

xb <- matrix(rnorm(4),2,2)

xa*xb #multiplicacao ponto a ponto

xa%*%xb #multiplicacao matricial

solve(xa) #inversa de xa

diag(xa) #diagnonal de xa




### Data frame

ID <- seq(1:6)
pes <- c(62, 70, 52, 98, 90, 70)
alt <- c(1.70, 1.82, 1.75, 1.94, 1.84, 1.61)
imc <- pes/(alt^2)
dados <- data.frame(ID=ID,peso=pes,altura=alt, imc=imc)
dados

## Selecionar a variavel de interesse:
dados$altura

## Adicionar variável de grupo no data frame
gr <- c(rep(1,3),rep(2,3))
dados$grupo <- gr

dados

## Funções uteis para data frame

names(dados) #nome das variaveis do data frame dados

str(dados)  #descricao das variaveis

mean(dados$imc) #média da variavel imc

sd(dados$imc)   #desvio-padrao da variavel imc

summary(dados$imc) #medidas resumo da variavel imc

table(dados$grupo) #tabela de frequencias da variavel grupo



### Operadores Relacionais

#Igual
10==11

#diferente
10!=11

### Operadores Lógicos
#e
x <- 15
x > 10 & x < 30

x < 10 & x < 30

#ou
x > 10 | x >  30

#negação
!x<30



### If e else

a <- 224
b <- 225
if (a==b) { v=10
} else {v=15}
v

a <- 224
b <- 225
if (a==b) { v=10
} else if (a > b) {v=15
} else {v=25}
v

### For

m <- c(1,20,50,60,100)

p <- rep(0,length(m))
for (i in 1: length(m)){
  p[i] <- m[i]/i
}
p


### Funções

f.soma <- function(x,y) {
  out <- x+y
  return(out)
}

# chamando a função

f.soma(x=10,y=20)

f.soma(10,20)



### Help/documentação do R

help(mean) #ou
?mean


###Instalação de pacotes
install.packages("tidyverse")
install.packages("readxl")
install.packages("janitor")
install.packages("dplyr")
install.packages("stringr")
install.packages("forcats")
install.packages("skimr")


### Chamo

