############################## Curso: Elaboracao de graficos em R:fluxos,mapas e redes #

######### Primeira aula ####

#### Limpando o environment #

rm(list=ls())

#### Comando para ver os atalhos do R Alt + Shift + k #

#### Definir diretorio de trabalho #
### Obs: 
### 1) Mudar o caminho do diretorio para o seu 
### 2) No Windows sempre trocar "\" por "/"

setwd("C:/Users/Avell/OneDrive/Economia/Curso/Elabora??o de gr?ficos em R")

#### Verificar diretorio de trabalho #

getwd()

#### Obter informa??es sobre pacotes, fun??es, etc... #

### Pacotes #

??graphics
help("datasets-package")

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

######### Segunda aula ####

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
# Pode-se indicar apenas o numero de linhas

M1 <- matrix(c(1, 0, 2, 5), nrow = 2)
M1
M2 <- matrix(c(3, 4, 0, -1), nrow = 2)
M2
M1+M2

# Subtracao

M1-M2

# Multiplicando por escalar

3*M1

# Multiplicando elemento a elemento
# Devem ser da mesma dimensao

M1*M2

# Multiplicando de Matrizes
# Obedecem as regras de multiplica??o de matrizes

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

rm(list = ls())

######### Terceira aula ####

#### Valores Especiais #

### SÃ£o reservados os seguintes valores: TRUE, FALSE, NA, NaN, Inf, NULL
### TRUE, FALSE operadores logicos.
### NA significa "not available".
### NaN significa  "Nao e um numero".Por exemplo de 0/0
### NULL representa o objeto vazio em R.
### Inf e -Inf significa infinito (ou infinito negativo) e surge como resultado
### de um nomero grande ou de um limite infinito.

TRUE
FALSE
NA 
NULL
Inf
NaN

TRUE <- 3 #Pode?
NULL <- "Grafico" #Pode?
NaN <- 15.3 #Pode?

### Diferenca entr NULL e NA #

vetor_1 <- c(1,2,3,4,5, NA)
mean(vetor_1)
length(vetor_1)
class(vetor_1)

vetor_2 <- c(1,2,3,4,5, NULL)
mean(vetor_2)
length(vetor_2)
class(vetor_2)

vetor_3 <- c(1, FALSE)
length(vetor_3)
class(vetor_3)

vetor_4 <- c("a", FALSE)
length(vetor_4)
class(vetor_4)

## Uma dica #

x <- c(2,4,6,NA)

is.na(x)
sum(is.na(x))
mean(x,na.rm = TRUE)
mean(x)

y <- c(2,4,NA ,6,NA)

is.na(y)
sum(is.na(y))
mean(y,na.rm = TRUE)
mean(y)

### Exemplos de Inf #

100^200

1/0

Inf/2

2/Inf

Inf^2


### Exemplos de NaN #

Inf/Inf

0/0

sqrt(-1)

### Curiosidades #

class(TRUE)
class(NaN)
class(NULL)
class(NA)
class(Inf)

#### Operadores Logicos #

### NegaÃ§Ã£o logica #

!TRUE

!FALSE

### Ou exclusivo #
### Retorna TRUE se os dois operadores foram diferentes e retorna FALSE
### se forem iguais.

xor(TRUE, TRUE)

xor(FALSE, TRUE)

xor(1,0)

xor(1,1)

vetor_logico_1 <- c(TRUE,TRUE,TRUE)
vetor_logico_2 <- c(FALSE,FALSE,FALSE)
vetor_logico_3 <- c(TRUE,FALSE,FALSE)

xor(vetor_logico_1,vetor_logico_2)

xor(vetor_logico_1,vetor_logico_3)

xor(vetor_logico_2,vetor_logico_3)

## Verificar se um valor Ã© TRUE ou FALSE

isFALSE(xor(TRUE, TRUE))

isTRUE(xor(TRUE, TRUE))

### Operadores 'e(&),'ou(|)' e  'esta contido (%in%)' Segue exemplos abaixos

### Fazendo filtros usando os operadores logicos

Paises <- c("Noruega","Alemanha",'ItÃ¡lia','Brasil','Fiji','Samoa','Guiana','Gana','Uganda')
IDH_2014 <- c(0.944, 0.916, 0.873, 0.755, 	0.727, 0.702, 0.636, 0.586 , 	0.483)
GDP_PPP_2014 <- c(347.4,3776, 2146.3, 3307.2, 7.7, 1.0, 5.5, 109.9, 75.3)

IDH_2014 [ IDH_2014 > 0.8]
IDH_2014 [ IDH_2014 > 0.6]
IDH_2014 [ IDH_2014 <= 0.702]

Paises[ IDH_2014 > 0.8]
Paises[ IDH_2014 > 0.6]
Paises[ IDH_2014 <= 0.702]

Paises [GDP_PPP_2014 > 400]
Paises [GDP_PPP_2014 < 50]

IDH_2014 [ Paises %in% c("Noruega", "Gana")]
GDP_PPP_2014 [ Paises %in% c("Noruega", "Gana")]


## Usando o operador de negacao logica "!"

IDH_2014 [ IDH_2014 > 0.8]
IDH_2014 [ !IDH_2014 > 0.8]

Paises[ IDH_2014 > 0.8]
Paises[ !IDH_2014 > 0.8]

Fala_Ingles <- c(TRUE,FALSE,TRUE,TRUE,FALSE)
Fala_Ingles

Nao_Fala_Ingles <- !Fala_Ingles
Nao_Fala_Ingles

## Usando os operadores "&" e "|"

IDH_2014 [ IDH_2014 > 0.8  | IDH_2014 < 0.6]

Paises [ IDH_2014 > 0.8 & GDP_PPP_2014 > 300]
Paises [ IDH_2014 > 0.5 & GDP_PPP_2014 > 100]
Paises [ (IDH_2014 <= 0.8 & IDH_2014 >= 0.5) & GDP_PPP_2014 > 100]
Paises [ (IDH_2014 <= 0.9 & IDH_2014 >= 0.5) & GDP_PPP_2014 > 100]

Paises [ (IDH_2014 > 0.8 | IDH_2014 < 0.6) & GDP_PPP_2014 > 100]

#### Data Frame #
### Nao e uma matriz... "E uma lista de vetores de igual comprimento." 

mtcars #dataframe padrÃ£o do R

dataframe <- data.frame(Paises,IDH_2014,GDP_PPP_2014)
dataframe
View(dataframe)

dataframe [1,1]
dataframe [1,2]
dataframe [1,3]
dataframe [1,1:3]
dataframe [3:5,2]

colnames(dataframe) <- c('Pais','IDH 2014', 'GDP PPP 2014')
View(dataframe)

dataframe$Pais
dataframe[,1]
dataframe[['Pais']]
head(dataframe)
nrow(dataframe) 
ncol(dataframe)
dim(dataframe)

## Usando filtros

dataframe[dataframe$`IDH 2014`>0.6,]
dataframe[dataframe$`IDH 2014`>0.6 & dataframe$`GDP PPP 2014` > 300,]

## Outros exemplos

help("datasets-package")
library(help = "datasets")

View(Puromycin)
help(Puromycin)

mean(Puromycin$conc)
mean(Puromycin$rate)
mean(Puromycin$state) #Pode?

Puromycin[Puromycin$state == 'treated',]
Puromycin[Puromycin$state == 'untreated',]

#### Pacotes #

### Sao bibliotecas criadas que vem por default ou criadas pela comunidade
### que contém funcoes e que facilitam muito a nossa vida.

### Instalar um pacote de R #

install.packages ("readxl")

install.packages(   c( "tidyverse", "writexl") )

### Chamar um pacote de R #

require(dplyr) #Não recomendado

library(readxl)
help(readxl) #Tem carregar o pacote primeiro

help(tidyverse)

library(tidyverse)
help(tidyverse)

#### Operador Pipe #

### O operador usa o valor resultante da expressão do lado esquerdo como
### primeiro argumento da função do lado direito
### Tem o pipe nativo |>, implementado na ultima versao do R 
### Tem o pipe do pacote  dplyr e do magrittr %>%.(Preterir)

## Exemplo 1: #
# codigo sem pipe #

x <- c(1,2,3,4)
sqrt(sum(x))

# codigo com pipe #

x |> sum() |> sqrt()

#### Importando de Dados e analise #

library(readxl)
help(readxl)
library(dplyr)

### Criar a pasta "Arquivos" no diretorio de trabalho.
### Usar o comando getwd() para ver qual e o diretorio de trabalho
### colocar la dentro todos os arquivos que vieram junto do e-mail
### No meu caso o diretorio de trabalho e:
### ""C:\\Users\\Avell\\OneDrive\\Economia\\Curso\\Elaboração de gráficos em R"

getwd()

Comtrade <- read_csv("C:\\Users\\Avell\\OneDrive\\Economia\\Curso\\Elaboração de gráficos em R\\Arquivos\\comtrade.csv")
View(Comtrade)
spec(Comtrade)

### OBS: Atalho pipe : CTRL + SHIF + M

Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  view()

Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  summarise(media = mean(`Trade Value (US$)`), 
            variancia = var(`Trade Value (US$)`), 
            dp = sd(`Trade Value (US$)`))

Fluxo_Argentina <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Reporter`== "Argentina")
view(Fluxo_Argentina)

Importacoes <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Trade Flow`== "Import")
view(Importacoes)

Fluxo_2020 <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Year` == 2020)
view(Fluxo_2020)

Fluxo_Argentina_Exportacao <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Reporter`== "Argentina" & `Trade Flow` == "Export")
view(Fluxo_Argentina_Exportacao)

Fluxo_Argentina_Exportacao <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Reporter`== "Argentina" & `Trade Flow` == "Export" & `Year` == "2019")
view(Fluxo_Argentina_Exportacao)

### Lendo CSV separado por ;#

dados_paises <- read_csv2('Arquivos\\factbook.csv')
view(dados_paises)

### Usando o comando read_dlim #

vendas_janeiro <- read_delim('Arquivos\\SalesJan2009.csv', delim = ',') |>
  view()

editores_wikipedia <- read_delim('Arquivos\\smallwikipedia.csv', delim = ';') |>
  view()

exercicio_guajarati_1 <- read_delim('Arquivos\\Table 9_2.txt', delim =' ') |>
  view()

### Lendo diretamente da internet #

systolic <- read_delim('http://courses.washington.edu/b517/Datasets/systolic.txt', delim = ' ') |>
  view()

QRS <- read_delim('http://courses.washington.edu/b517/Datasets/QRS.csv', delim = ',') |>
  view()

### Lendo arquivos xlsx e xls #

exercicio_guajarati_2 <- read_excel('Arquivos\\Table 3_8.xls') |>
  view()

World_Development_excel <- read_excel('Arquivos\\World_Development.xlsx') |>
  view()

excel_sheets("Arquivos\\World_Development.xlsx")

World_Development_excel <- read_excel('Arquivos\\World_Development.xlsx', sheet = 'Data') |>
  view()

World_Development_excel <- read_excel('Arquivos\\World_Development.xlsx', sheet = 1) |>
  view()

dim(World_Development_excel)


### Organizando #

World_Development_excel_arrumado  <- read_excel('Arquivos\\World_Development.xlsx') |>
  view()

World_Development_excel_arrumado  <- read_excel('Arquivos\\World_Development.xlsx', 
                                                sheet = 2) |>
  view() 

World_Development_excel_arrumado  <- read_excel('Arquivos\\World_Development.xlsx', 
                                                sheet = 2, skip =6) |>
  view() 

World_Development_excel_arrumado  <- read_excel('Arquivos\\World_Development.xlsx', 
                                                sheet = 2, skip =6, n_max =255, na = c(" ", "..")) |>
  view() 

World_Development_excel_apenas_completos <- na.omit(World_Development_excel_arrumado) |>
  view()

rm(list=ls())

#### Exportando Dados #
### Usando os comandos padroes do R

write_delim(mtcars, "MeuMtcars.txt", delim = "\t")
write_csv(iris, "Ntestiris.csv")

### Usando a biblioteca writexl

library(writexl)
write_xlsx(iris, path = "Meuiris.xlsx")
write_xlsx(World_Development_excel_apenas_completos, 
           path ="World_Development_excel_apenas_completos.xlsx")

#### Exercicio #
### Tratar o arquivo "dados_paises.xlsx" para que ele fique igual ao
### "dados_paises_gabarito.xlsx" usando os comandos de tratamento, de organizacao
### e criando um xlsx ao final.