#AUla 2 - Intro Econo#

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

#--------------------------------------#
#Exemplo5# Média Geométrica

X5 <- c(4, 6, 8) # 1 linha e 3 colunas
n <- length(X5) #conta a quantidade de valores
mediaX5 <- prod(X5)^(1/n) #pega os três valores e multiplica (produtório)
round(mediaX5, digits = 1) #arredondar

#--------------------------

#Exemplo6# Média Geométrica Ponderada

X6 <- c(4, 6, 8)
class(X6)

w6 <- c(1, 2, 3) #pesos

G2 <- round((prod(X6*w6))^(1/sum(w6))), 1))



#mediana ----------------------------------------

w <- c(-3, -2, -1, 0, 1, 2, 3)
mediana1 <- median(w) #mediana
print(mediana1)


#Quartis ----------------------------------------

p <- c(0:100) #conjunto de dados
length(p) #conta quantia de valores no grupo

quantile(p) #quartis aparecem no console

faixainterquant <- quantile(p, 0.75) - quantile(p, 0.25)



#Moda ----------------------------------------------

getmode <- function(v) 
  {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
  }

z <- c(2, 1, 2, 3, 1, 2, 3, 4, 1, 5, 5, 3, 2, 3)
moda1 <- getmode(z)
print(moda1)
## [1] 2


#gráfico de linha ------------------------------

par(mfrow=c(1,3))
plot(z, xlab="obs", main="Gráfico 1", col="red", type = "l")

#-------------------------------------------------------------------------------

#Data 10/05/2021 - Aula 3 - Tipos de dados

rm()          #remove as variantes
ls()          #listar objetos criados na memória
vars <- ls()  #armazena ls na variavel vars
vars          #mostra o conteúdo da lista "vars"
rm(list=ls()) #colocando um comando dentro do outro e remove toda a lista de obj


#criando variaveis e analisando o tipo e a classe da variavel/objeto -----------

a <- 5              #class "double" aceita casas decimais
b <- 12
c <- pi
d <- as.integer(5)  #para numeros inteiros
x <- "5"
y <- "12"
z <- "pi"
a+b+c

class(a)
typeof(a)
class(d)
typeof(d)

f <- FALSE             #variavel booleana (lógica)
v <- TRUE

class(f)
class(v)

aa <- as.numeric(x)
yy <- as.character(b)

#vetores, matematicamente um vetor é uma lista de números) --------------------

v1 <- c(1, 2, 4, 7)   #cria um vetor (só contém números)
v1                    #lista os valores do vetor
v1[1]                 #mostra o elemento 1
v1[3]
sum(v1)               #somar todos os elementos do vetor
mean (v1)             #média dos elementos do vetor

v2 <- 20:100
v2[1:20]
v2[5:67]

v3 <- seq(100, 150,5)  #de 100 até 150, pulando de 5 em 5
v3
length(v3)             #conta itens do vetor

#listas (aceita todos os tipos de vetores) ---------------------

l1 <- c(100, -56, FALSE, FALSE, TRUE, "Basilio", "R é poderoso", "False")    #tudo virou caracter
l2 <- list(100, -56, FALSE, FALSE, TRUE, "Basilio", "R é poderoso", "False") #lista que mistura tipos de dados

class(v3)
class(l1)
class(l2)


#Matrix - Dados em duas dimensões, linhas(l) e colunas*(c), corresponde ao R2 --
#pode ser entendida como uma coleção de vetores agrupados por L ou C

rm(list=ls())
m1 <- matrix(1:10,nrow=5,ncol=2,byrow=FALSE)    #cria uma matriz 5x2
m1

m2 <- matrix(1:10,nrow=5,ncol=2,byrow=TRUE)
m2

m3 <- matrix(1:10,nrow=2,ncol=5,byrow=FALSE)
m3

m4 <- matrix(1:10,nrow=2,ncol=5,byrow=TRUE)
m4

dim(m1)                                         #dimensão de uma matriz
dim(m4)
dim(m1)[1]                                      #mostra a primeira dimensão
dim(m1)[2]                                      #mostra a segunda dimensão

m5 <- matrix(100:119,nrow=5,ncol=4,byrow=FALSE)
m5
m5[3, 2]                      #pega valor de terceira linha e da segunda coluna
m5[lin, col]
m5[ , c(2, 4)]                #extrai coluna 2 e 4
m5[1:3, ]                     #extrai linhas 1 e 3

#-------------------------------------------------------------------------------

#12/05/2021
#Aula 4 # como acessar elementos de uma matriz no R
#Matriz e algebra linear

rm(list=ls())

m <- matrix(1:25,nrow=5,ncol=5,byrow=TRUE)
m
m[2:4,2:4]
sum(m[1,]) #soma linha 1
sum(m[5,]) #soma ultima limja
sum(m[1:5,]) #soma todas as linhas de 1 a 5

#criando matrizes a partir de vetores -----------------------------------------

rm(list=ls())
x <- c(10,13,15,20,40,78,99)
y <- c(120,135,160,133,140,310,400)
z <- c(30,22,15,18,27,9,5)

m1 <- cbind(x,y,z) #c = coluna
m1

m2 <- rbind(x,y,z) #r = linha (row)
m2

class(x)
class(m1)

par(mfrow=c(1,2))

plot(m1[,1], m1[,2],lwd=2, type="b", col="tomato", main="Diagrama x y")
plot(x,y, lwd=2, type="b", col="blue", main="Diagrama x z")

plot(m1[,1], m1[,2],lwd=2, type="b", col="tomato", main="Diagrama col11 col12")
plot(m1[,1], m1[,3],lwd=2, type="l", col="tomato", main="Diagrama col1 col3")

#Covariância + correlação -----------------------------------------------------

var_x <- sum(((x-mean(x))^2))/(length(x)-1)
var_x

cov(x,y)
cov(x,z)
var(x)
cov(m1)     #covariancia
cor(m1)     #correlacao (independe da escala do numero)

#operaçãoes algebricas com matrizes --------------------------------------------
#soma e subtração

m2 <- matrix(0,nrow=7,ncol=3)
m2[,1] <- 1
m2[,2] <- 3
m2[,3] <- 5
m2
dim(m1)
dim(m2)
m1
m2
m1-m2
m1+m2


#multiplicaçao por numero escalar ----------------------------------------------

z <- c(2,2,2,2,2,2,2)
w <- c(1,2,3,4,5,6,7)
m3 <- rbind(x,y,z,w)

10*m1[,3]                     #multiplica toda a matriz
m1[.3] <- 10*m1[,3]           #multiplica só a coluna 3 e atualiza a matriz
m1[.3] <- 10*m1[,3]/100
m1[.3] <- 10*m1[,3]*10
m1[.3] <- 10*m1[,3]/100


#multiplicação elemento por elemento -------------------------------------------

dim(m1)
dim(m2)
m1*m2

m3 <- m1[,-c(4,5)]       #retira as colunas 4 e 5 da matriz 1
dim(m3)
t(m3)                    #t = transposta de matriz

#produto interno de matriz -----------------------------------------------------
# M(nm) x K(mn)

m2 %*% t(m3)              #produto interno da matriz

m1 <- matrix(c(1,2,3,0,2,1,1,2,1),nrow=3,ncol=3)
m2 <- matrix(c(2,3,1,1,0,1,2,2,3),nrow=3,ncol=3)

m1*m2                  #multiplica elemento por elemento
m1%*%m2                #produto interno (inner product)
det(m1)
m1inv <- solve(m1)    #solve() inerte uma matriz
m1%*%m1inv