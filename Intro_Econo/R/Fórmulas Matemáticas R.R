getwd()
setwd("C:/Users/Samsung_LeoCamilli/Desktop/Programa��o/Intro_Econo/R")

# Ferramentas Puras ------------------- ####

mean()  

rm(list = ls())

length(conj)     # conta quantos seres tem, ou seja, "n"

round()

sum()

rm()          #remove as variantes

ls()          #listar objetos criados na memória

vars <- ls()  #armazena ls na variavel vars

vars          #mostra o conteúdo da lista "vars"

rm(list=ls()) #colocando um comando dentro do outro e remove toda a lista de obj




# M�dias ------------------------------ ####
# ------ M�dia Ponderada ------------------------------------

X <- c(21, 23, 25, 28, 31)
mediaX <- mean(X)  #mean eh para tirar média #média aritiética simples

X2 <- c(4, 6, 8)
mediaX2 <- mean(X2)

X3 <- c(22, 23, 25, 28, 30) #variavel para media ponderada
w3 <- c(8, 7, 3, 1, 1) #pesos (i)
wX3 <- w3*X3
mediaX3 <- sum(wX4)/sum(w3)  #média ponderada (maior ou menor importancia)
round(mediaX3) #para arredondar
prod (X3) #para calcular produto
# ------ M�dia Geom�trica -----------------------------------------------------

X5 <- c(4, 6, 8)
X5
## [1] 4 6 8
n <- length(X5)
mediaX5 <- prod(X5)^(1/n)
round(mediaX5, digits = 1)
## [1] 5,8
# ------ M�dia Geom�trica Ponderada -------------------------------------------------

x6 <- c(4, 6, 8)
class(x6)
## [1] "numeric"
x6
## [1] 4 6 8
w6 <- c(1, 2, 3)
w6
## [1] 1 2 3
G2 <- round((prod(x6^w6))^(1/sum(w6)), 1)
G2
## [1] 6,5
# ------ M�dia Harm�nica ------------------------------------------------------

# ------ Quartis --------------------------------------------------------------

p <- c(0:100) #conjunto de dados
length(p) #conta quantia de valores no grupo

quantile(p) #quartis aparecem no console

faixainterquant <- quantile(p, 0.75) - quantile(p, 0.25)
faixainterquant


# ------ Moda -----------------------------------------------------------------

getmode <- function(v) 
{
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

z <- c(2, 1, 2, 3, 1, 2, 3, 4, 1, 5, 5, 3, 2, 3)
moda1 <- getmode(z)
print(moda1)
## [1] 2



# Gr�ficos ---------------------------- ####
# ------ Gr�fico de Linha -----------------------------------------------------

par(mfrow=c(1,3))
plot(z, xlab="obs", main="Gráfico 1", col="red", type = "l")



# DataBase ---------------------------- ####
# Anota��es --------------------------- ####

# Eu s� consigo somar vetores multiplos
# poara criar matriz: rbind  , r de row e bind de juntar e cbind para colunas (c de colunas)
# comando view para visualizar os dados
# matriz � para calculo e data.frame � para dados
