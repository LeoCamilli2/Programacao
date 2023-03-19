#lista ex 1

#ex2
conj <- c(2, 3, 5, 8, 12)
media_conj <- mean(conj)

n_conj <- length(conj)
media_conj <- prod(conj)^(1/n)
round(media_conj, digits = 1)


#teste aula 3 --------------------------------------

X <- c(159, 161, 162, 164, 166, 167, 168, 168, 169,
       170, 171, 171, 172, 173, 173, 174, 174, 174, 175,
       176, 177, 178, 179, 180, 181, 183, 185, 190, 194,
       201)
head(X)
## [1] 159 161 162 164 166 167
obsX <- length(X)
obsX
## [1] 30
faixaX <- range(X)
faixaX
## [1] 159 201



grafico1 <- hist(
  X,
  main="Histograma da Altura",
  xlab="cm",
  ylab="frequência",
  border="blue",
  col="green",
  xlim=c(150,210),
  las=1,
  breaks=5,
  right=FALSE
)
grafico1



nobs <- c(1:30)
dataX <- as.data.frame(cbind(nobs, X))
# transformando em data frame
tail(dataX)
## nobs X
## 25 25 181
## 26 26 183
## 27 27 185
## 28 28 190
## 29 29 194
## 30 30 201
# mostrando as seis últimas observações
quebras <- seq(150, 210, by = 10)
# definindo os intervalos
quebras
## [1] 150 160 170 180 190 200 210

dataX.cut <- cut(dataX$X, quebras, right = FALSE)
# construindo as classes fechado a esq e aberto a
# direita
dataX.freq <- table(dataX.cut)
# obtendo a frequência para cada classe.
dataXfreq <- cbind(dataX.freq)
# colocando os dados em colunas
dataXfreq
## dataX.freq
## [150,160) 1
## [160,170) 8
## [170,180) 14
## [180,190) 4
## [190,200) 2
## [200,210) 1


#Média ponderada --------------------------------------------------------------



freq <- dataX.freq
ptmc <- c(155, 165, 175, 185, 195, 205)
media2 <- round(sum(ptmc * freq)/sum(freq), 2)
media2
## [1] 175,33



#variância ---------------------------------------------------------------------

tail(X)
## [1] 181 183 185 190 194 201
varX <- round(var(X), 4)
varX
## [1] 89,9138

media22 <- rep(media2, 6)
media22
## [1] 175,33 175,33 175,33 175,33 175,33 175,33
varX2 <- sum(((ptmc - media22)^2) * freq)/sum(freq)
varX2
## [1] 109,8889



#desvio padrão -----------------------------------------------------------------

tail(X)
## [1] 181 183 185 190 194 201
dpX <- round(sd(X), 4)
dpX
## [1] 9,4823

 

#Aula 5 ------------------------------------------------------------------------
#Arrays e Dataframes

x <- 1:18

ar <- array(x, dim=c(2,3,3))
ar
dim(ar)

#Exercicio: Criar array de dimensão de 10x4x5 onde:
#dim1 - ano : 2000 a 2009
#dim2 - variável v1 v2 v3 e v4
#dim3 - cidade
#criar a partir de nº aleatorio inteiro entre 0 e 99.

x <- round(runif(200,min=0,max=99),0)
x

ar <- array(x, dim = c(14,4,5))
ar

dimnames(ar)[[1]] <- paste0(2000:2009)
dimnames(ar)[[2]] <- paste0("v", 1:4)
dimnames(ar)[[3]] <- paste0("cidade", 1:5)

ar[1,,]
ar[,1,]
ar[,,1]

ano2000 <- ar[1,,]
v1 <- ar[,1,]
cidade1 <- ar[,,1]

#fazer um boxplot, da variavel 1, para todos os anos, para cada cidade
boxplot(ar[,1,1:5], ylab="v1", main="boxplot - v1 por cidade", col=2:6)

df <- as.data.frame(ar)   #converte array em long-term-data

install.packages("reshape2")

df2 <- melt(ar)
