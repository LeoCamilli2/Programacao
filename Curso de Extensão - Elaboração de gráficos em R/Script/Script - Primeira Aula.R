############################## Curso: Elaboracao de graficos em R:fluxos,mapas e redes #

######### Primeira aula ####

#### Limpando o environment #

rm(list=ls())

#### Comando para ver os atalhos do R Alt + Shift + k #

#### Definir diretorio de trabalho #
### Obs: 
### 1) Mudar o caminho do diretorio para o seu 
### 2) No Windows sempre trocar "\" por "/"

setwd("C:/Users/Avell/OneDrive/Economia/Curso/Elaboração de gráficos em R")

#### Verificar diretorio de trabalho #

getwd()

#### Obter informações sobre pacotes, funções, etc... #

### Pacotes #

??graphics

### Exemplo de uma funcao #

example(sum)

#### Operadores #

### Operadores Logicos #

?Logic

## TRUE ou FALSE #

### Operadores Aritimeticos #

?Arithmetic

## igualdade #

5==5
5==4

## Maior que #

5>4
5>6

## Maior ou igual que #

5>=5
5>=6

## Menor que #

6<10
6<5

## Menor ou igual que #

6<=6
6<=5

## Diferente de #

5!=4
5!=5

#### Operacoes simples #

### Soma e Subtracao #

8 + 4

10 - 15

(5 + 10) + (7 - 15)

### Mutiplicacao e divisao #

6/4

10/100

45 * 3

(-3) * (-5)

## Parte inteira da divisao

6 %/% 4

10 %/% 6

4523 %/% 322

## Resto da divisao

6 %% 4

10 %% 6

4523 %% 322

### Potencia #

4**2

2**(1/10)

2**(-2)

4^2

2^(1/10)

2^(-2)

## Raiz

sqrt(4)

4**(1/2)

8**(1/3)

### Arredondando valores #

round(15/7,0)

round(15/7,1)

round(15/7,2)

round(15/7,3)

###Combinando as opoeracoes

round((4*2)/(4) - 4**(1/2) + 30/11,2)


rm(list = ls())

#### Variavel e atribuicao #

### Para criar um objeto, use "<-". 
### Para passar um argumento para uma funcao, use "="

x <- 2
x

y <- 3
y

### R e case Sensitive: x e diferente de X #

X <- 4
X

### Pode guardar operacoes #

x <- 4+5**2
x

### Atualizar valores #

l <- 1
l

l <- 1+l
l

### Palavras podem ser variaveis #

variavel1 <- 3

Variavel1 <- 10

variavel1

Variavel1

### Pode-se armagenar strings dentro de variaveis # 

variavel2 <- "Curso de R"

variavel2

bom_dia <- "bom dia"

bom_dia

### Como saber o que esta armagenado em uma variavel? #

class(variavel2)
class(variavel1)

rm(list = ls())

### Criando um vetor #

vetor1 <- c(1,2,3,4,5,15)
vetor1

vetor2 <- c(5,-6,-1,3,-4,0)
vetor2

vetor3 <- c(1,2,3)
vetor3

vetor4 <- c("a", "b", "c", "d", "e")
vetor4

vetor5 <- c(1,2, "c", "d")
vetor5

vetor6 <- c(4,5)

class(vetor1)
class(vetor4)
class(vetor5)

View(vetor1)
View(vetor2)
View(vetor4)

## Operacao com vetor #

3*vetor1

vetor1/5

vetor1 + vetor2

vetor1 + vetor3 #Pode?

vetor6 + vetor5 #Pode?

vetor6 + vetor3 #Pode?

# Produto entre os elementos de um vetor #

vetor1*vetor2
vetor1*vetor3

# Produto matricial #

vetor1%*%vetor2

# Devem ter o mesmo tamanho #

vetor1%*%vetor3

## Concatenando vetores # 

# Por linhas #

Matriz_1 <- rbind(vetor1,vetor2)
Matriz_1
View(Matriz_1)

# Por colunas #

Matriz_2 <- cbind(vetor1,vetor2)
Matriz_2
View(Matriz_2)

## Acessando elementos dos vetores #

vetor <- c(5,22,43,54,"ana", "zeca", "carlos", "diana")

# Elemento por elemento #

vetor[1]
vetor[2]
vetor[3]
vetor[4]
vetor[5]
vetor[6]
vetor[7]
vetor[8]

# Todos os elementos #

for(i in 1:10){
  print(vetor[i])  
}

vetor[9] #pode? 

#NA sigfnifica que nao foi possivel avaliar o que se pediu. Logo NA diferente de
#vazio #

## Subconjuntos do vetor #

vetor[c(2, 3)]
vetor[c(1, 2, 4)]

# Usando o sinal de menos para retirar elementos de um vetor # 

vetor[-1]
vetor[-c(6, 8)]
vetor[-c(1, 2, 3,4)]
novo_vetor <- vetor[-c(1, 2, 3,4)]

# Usando os operadores aritimeticos #

vetor <- c(-3,4,-5,1,2,3,10,56,-30,40,1, -23,-32,15,4)

vetor[vetor==5]
vetor[vetor!=2]
vetor[vetor<6]
vetor[vetor>6]

vetor==4
vetor!=2
vetor<6
vetor>6

#Mostra a posicao dos elementos #

which(vetor >= 6)
which(vetor == 4)

vetor[vetor %in% c(1,2,3,4)]
vetor[vetor %in% c(-5,-23)]

##Funcao com vetores

x <- c(2,4,6,8,10)

sum(x)

mean(x)

range(x)

summary(x)

sd(x)

median(x)

var(x)

g = c(5, 2, 2, 1, 10)

rev(g)

sort(g)

table(g)

sort(g, decreasing = TRUE)

unique(g)

order(g)

length(g)

cumsum(g)

is.na(g)

dia <- c(01, 14, 30)
mes <- c("jan", "mai", "dez")
ano <- c(1980, 1990, 2000)

class(dia)
dia <- as.character(dia)
class(dia)

class(mes)
mes <- as.character(mes)
class(mes)

data <- paste(dia, mes, ano)
data
class(data)

## Outra forma de criar vetores #

# Vetor de 1 a 20 #

Vetor_a <- 1:15
Vetor_a

# Vetor de 15 a 1 #

Vetor_b <- c(15:1)
Vetor_b

# Vetor de -5 a 5 #

Vetor_c <- c(-5:5)

# Usando a funcao seq() #

q <- seq(2,4,by = 0.5)
q

w <- seq(0,1, length = 1)
w

k <- seq(0,1, length = 4)
k

# Usando a funcao rep() #

t <- rep(5, times = 10)
t

y <- rep(4:5, times = 3)
y

i <- rep(4:5, each = 10)
i

rm(list = ls())

### Matrizes #

## Criando uma matriz #

M <- matrix(1:12, nrow = 4, ncol = 3)
M

# Os elementos sao organizados por coluna. Caso deseje
# organizar os elementos por linha, use byrow=TRUE.

N <- matrix(1:12, nrow = 4, ncol = 3, byrow = TRUE)
N

NN <- matrix(1:12, nrow = 4, ncol = 3, byrow = FALSE)
NN

M == N

M == NN


## Operacoes com  Matrizes #

# Soma
# Devem ser da mesma dimensao
# Pode-se indicar apenas o número de linhas

M1 <- matrix(c(1, 0, 2, 5), nrow = 2)
M1
M2 <- matrix(c(3, 4, 0, -1), nrow = 2)
M2
M1+M2

# Subtração

M1-M2

# Multiplicando por escalar

3*M1

# Multiplicando elemento a elemento
# Devem ser da mesma dimensao

M1*M2

# Multiplicando de Matrizes
# Obedecem as regras de multiplicação de matrizes

M1 %*% M2

M3 <- matrix(c(3, 4, 0, -1, -5, 10), nrow = 2)
M3

M1 %*% M3

M3 %*% M1

# Todas as operacoes padroes de matrizes estao disponiveis no R  

# Transposta                                                      
t(M1)                                                                        

# Determinante                                           
det(M1)

# Inversa
solve(M1)

# Traco
sum(diag(M1))

# Alem delas tem outras operacoes

sum(M1)
mean(M1)
sd(M1)
range(M1)
diag(4) #matriz indentidade
det(M1)
dim(M1)
ncol(M1)
nrow(M1)
rowSums(M1)
rowMeans(M1)
colSums(M1)
colMeans(M1)
summary(M1)

## Acessando elementos de uma matriz #

M <- matrix(1:20,nrow=4,byrow=TRUE)
M

#Para acessar o elemento da fila 2 e coluna 3 da matriz M usamos M[2,3]
M[2,3]

#Para acessar a linha 3 da matriz M usamos M[4,]
M[4,]

#Para acessar a coluna 4 da matriz M usamos M[,1]
M[,1]

# Para selecionar a sub-matriz correspontende a primeira,
# segunda e terceira linhas, e terceira e quarta coluna
# usamos M[1:3,3:4]

M[1:3,3:4]

#Para dar nomes as linhas da matriz criamos um vetor de 
#caracteres com 4 entradas

rownames(M) <- c("L1","L2","L3","L4")
M

#Para dar nomes as colunas da matriz criamos um vetor de 
#caracteres com 5 entradas

colnames(M) <- c("C1","C2","C3","C4","C5")
M

#Para saber o nome das linhas de M usamos rownames(M)
rownames(M)

#Para saber o nome das colunas de M usamos colnames(M)
colnames(M)

#Para saber tanto o nome das linhas como das colunas de M
#usamos dimnames(M)
dimnames(M)













