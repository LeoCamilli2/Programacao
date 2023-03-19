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

### São reservados os seguintes valores: TRUE, FALSE, NA, NaN, Inf, NULL
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

### Negação logica #

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

## Verificar se um valor é TRUE ou FALSE

isFALSE(xor(TRUE, TRUE))

isTRUE(xor(TRUE, TRUE))

### Operadores 'e(&),'ou(|)' e  'esta contido (%in%)' Segue exemplos abaixos

### Fazendo filtros usando os operadores logicos

Paises <- c("Noruega","Alemanha",'Itália','Brasil','Fiji','Samoa','Guiana','Gana','Uganda')
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

mtcars #dataframe padrão do R

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
### que cont?m funcoes e que facilitam muito a nossa vida.

### Instalar um pacote de R #

install.packages ("readxl")

install.packages(   c( "tidyverse", "writexl") )

### Chamar um pacote de R #

require(dplyr) #N?o recomendado

library(readxl)
help(readxl) #Tem carregar o pacote primeiro

help(tidyverse)

library(tidyverse)
help(tidyverse)

#### Operador Pipe #

### O operador usa o valor resultante da express?o do lado esquerdo como
### primeiro argumento da fun??o do lado direito
### Tem o pipe nativo |>, implementado na ultima versao do R 
### Tem o pipe do pacote  dplyr e do magrittr %>%.(Preterir)

## Exemplo 1: #
# codigo sem pipe #

x <- c(1,2,3,4)
sqrt(sum(x))

# codigo com pipe #

x |> sum() |> sqrt()

rm(list=ls())

######### Quarta Aula ####

#### Importando de Dados #

library(readr)
library(readxl)
help(readxl)

### Criar a pasta "Arquivos" no diretorio de trabalho.
### Usar o comando getwd() para ver qual e o diretorio de trabalho
### colocar la dentro todos os arquivos que vieram junto do e-mail
### No meu caso o diretorio de trabalho e:
### C:\\Users\\Avell\\OneDrive\\Economia\\Curso\\Elaboração de gráficos em R"

getwd()

Comtrade <- read_csv('C:/Users/Avell/OneDrive/Economia/Curso/Elaboração de gráficos em R/Arquivos/comtrade.csv')
View(Comtrade)
spec(Comtrade)

### Lendo CSV separado por ;#

dados_paises <- read_csv2('Arquivos\\factbook.csv')
view(dados_paises)

### Usando o comando read_dlim #

vendas_janeiro <- read_delim('Arquivos\\SalesJan2009.csv', delim = ',')
View()

editores_wikipedia <- read_delim('Arquivos\\smallwikipedia.csv', delim = ';')
View()

exercicio_guajarati_1 <- read_delim('Arquivos\\Table 9_2.txt', delim =' ')
View()

### Lendo diretamente da internet #

systolic <- read_delim('http://courses.washington.edu/b517/Datasets/systolic.txt', delim = ' ')
View()

QRS <- read_delim('http://courses.washington.edu/b517/Datasets/QRS.csv', delim = ',')
View()

### Lendo arquivos xlsx e xls #

exercicio_guajarati_2 <- read_excel('Arquivos\\Table 3_8.xls')
View()

World_Development_excel <- read_excel('Arquivos\\World_Development.xlsx')
View()

excel_sheets("Arquivos\\World_Development.xlsx")

World_Development_excel <- read_excel('Arquivos\\World_Development.xlsx', sheet = 'Data')
View()

World_Development_excel <- read_excel('Arquivos\\World_Development.xlsx', sheet = 1)
View()

dim(World_Development_excel)

### Organizando #

World_Development_excel_arrumado  <- read_excel('Arquivos\\World_Development.xlsx')
View()

World_Development_excel_arrumado  <- read_excel('Arquivos\\World_Development.xlsx', 
                                                sheet = 2)
View() 

World_Development_excel_arrumado  <- read_excel('Arquivos\\World_Development.xlsx', 
                                                sheet = 2, skip =6)
View() 

World_Development_excel_arrumado  <- read_excel('Arquivos\\World_Development.xlsx', 
                                                sheet = 2, skip =6, n_max =255, na = c(" ", ".."))

World_Development_excel_apenas_completos <- na.omit(World_Development_excel_arrumado)
View()

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

#### Explicando o tydeverse ###

### ggplot2, para visualizacao de dados. 
### dplyr, para manipulacao de dados.
### tidyr, para organizacao de dados.
### readr, para importacao de dados.
### purrr, para programacao funcional.
### tibble, para tibbles.
### stringr, para strings.
### forcats, para fatores.


### Dplyr #

library(tidyverse)

## select()  - Seleciona colunas de um data frame.
## filter()  - Seleciona linhas de um data frame com base em filtros, geralmente impostos nas colunas.
## mutate()  - Cria novas variaveis ou redefine variaveis existentes de um data frame.
## arrange() - Reordena linhas de acordo com alguma varivel desejada.
## summarise() + group_by - Reduz varios valores a um unico valor resumo.


### OBS: Atalho pipe : CTRL + SHIF + M

Comtrade %>%
  select(Year,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  arrange(Year,`Trade Flow`, Reporter) %>% 
  View()

Comtrade %>%
  select(Year:`Aggregate Level`) %>%
  View()

Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  summarise(media = mean(`Trade Value (US$)`), 
            variancia = var(`Trade Value (US$)`), 
            dp = sd(`Trade Value (US$)`))

Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  arrange(`Trade Value (US$)`) %>% 
  View()

Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  arrange(desc(`Trade Value (US$)`)) %>% 
  View()

Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  mutate(`Trade Value (US$)`/100) %>% 
  View()

Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  mutate(`Trade Value (US$)` = `Trade Value (US$)`/100) %>% 
  View()

Fluxo_Argentina <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Reporter`== "Argentina")
View(Fluxo_Argentina)

Importacoes <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Trade Flow`== "Import")
View(Importacoes)

Fluxo_2020 <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Year` == 2020)
View(Fluxo_2020)

Fluxo_Argentina_Exportacao <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Reporter`== "Argentina" & `Trade Flow` == "Export")
View(Fluxo_Argentina_Exportacao)

Fluxo_Argentina_Exportacao <- Comtrade %>%
  select(`Year`,`Trade Flow`,`Reporter`,`Trade Value (US$)`) %>%
  filter(`Reporter`== "Argentina" & `Trade Flow` == "Export" & `Year` == "2019")
View(Fluxo_Argentina_Exportacao)

### Outros Exemplos #

library(HSAUR2)

conjunto_de_dados <- as_tibble(Forbes2000)

conjunto_de_dados%>% 
  select(starts_with("c")) %>% 
  View()

conjunto_de_dados %>% 
  select(-ends_with("s")) %>% 
  View()

conjunto_de_dados %>% 
  select(sales, everything()) %>% 
  View()

conjunto_de_dados %>% 
  filter(str_detect(category,'Food')) %>%  
  View()

conjunto_de_dados %>% 
  filter(country %in% c("Brazil", "United States", "Japan")) %>% 
  View()

#### Exercicio #
### Tratar o arquivo "dados_paises.xlsx" para que ele fique igual ao
### "dados_paises_gabarito_2.xlsx" usando os comandos de tratamento, de organizacao
### e criando um xlsx ao final.

library(tidyverse)
library(writexl)

dados_paises <- read_excel('Arquivos\\dados_paises.xlsx', skip = 4, na = c('..'))

dados_paises_tratados <- dados_paises |>
  select(`Country`,`Area(sq km)`,`GDP`,`GDP - per capita`,`GDP - real growth rate(%)`,
         `Inflation rate (consumer prices)(%)`,`Population`) |>
  mutate(GDP = GDP/1000000 ) |>
  arrange(desc(GDP)) |>
  filter(`GDP - per capita` >= 20000 & `Population` >= 30000000)

write_xlsx(dados_paises_tratados, path ='dados_paises_gabarito_2.xlsx')

#### Dados que iremos usar nos nossos graficos ###

dados_1 <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/13_AdjacencyDirectedWeighted.csv", header=TRUE)
View(dados_1)

dados_2 <- read_excel('Arquivos\\Relações_comerciais_matriz.xlsx')
View(dados_2)

dados_3 <- read_excel('Arquivos\\Relações_comerciais_nos.xlsx')
View(dados_3)

######### Quinta Aula ####

rm(list = ls(all.names = TRUE))

#### Bibliotecas usadas para construção de graficos #

### Redes #

install.packages('igraph')

### Fluxos #

install.packages('igraph')
install.packages('circlize')

### Mapas #

install.packages('ggplot2')
install.packages('maps')
install.packages('geosphere')

#### Grafico de fluxo #

rm(list = ls(all.names = TRUE))

### Carregando bibliotecas
library(igraph)
library(circlize)
library(viridis)
library(tidyverse)
library(readxl)
#library(migest)

### Carregando arquivo #

df <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/13_AdjacencyDirectedWeighted.csv", 
                 header=TRUE,
                )
View(df)

colnames(df) <- rownames(df)
View(df)

### Outra forma de resolver o problema #

df <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/13_AdjacencyDirectedWeighted.csv", 
                 header=TRUE,
                 check.names=FALSE)
View(df)

### Preparando os dados #

data_long <- df %>%
  rownames_to_column %>%
  gather(key='key', value="value", -rowname)
data_long <-data_long[data_long$value != 0,]


### Preparando parametros para plotagem #

circos.clear()

circos.par(start.degree = 0 ,
           gap.degree = 1 ,
           gap.after = 1 ,
           track.margin=c(0.01,0.01),
           cell.padding =  c(0.02, 1, 0.02, 1.00),
           unit.circle.segments = 500 ,
           track.height = 0.2 ,
           points.overflow.warning = TRUE,
           canvas.xlim = c(-1,1),
           canvas.ylim = c(-1,1),
           circle.margin = c(0.01,0.01,0.01,0.01),
           clock.wise = TRUE,
           xaxis.clock.wise = TRUE,
           points.overflow.warning = TRUE)

par(mar = rep(0, 4))

### Gerando o grafico #

chordDiagram(
  data_long
)

chordDiagram(
  data_long,
  transparency = 0.1
)

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2
)

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE
)

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE,
  directional = 2
)

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE,
  directional = 1,
  direction.type = c("arrows","diffHeight"),
  link.arr.length = 0.2
)

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE,
  directional = 1,
  direction.type = c("arrows","diffHeight"),
  link.arr.type = "big.arrow",
  diffHeight  = -mm_h(2),
  link.sort = TRUE,
)

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE,
  directional = 1,
  direction.type = c("arrows","diffHeight"),
  link.arr.type = "big.arrow",
  diffHeight  = -mm_h(2),
  link.sort = TRUE
)

title(main = 'Titulo do Grafico',line= -1,cex.main = 1.2)
text(0.57,-1.015, 'Legenda da Grafico')

### Opcoes Avancadas #

## Alterando a orientação dos nomes dos setores #  

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE,
  directional = 1,
  direction.type = c("arrows","diffHeight"),
  link.arr.type = "big.arrow",
  diffHeight  = -mm_h(2),
  link.sort = TRUE,
  annotationTrack = c("grid"),
  preAllocateTracks = list(track.height = max(strwidth(unlist(dimnames(data_long)))))
  )

circos.track(track.index = 1, 
                       panel.fun = function(x, y) {
                         circos.text(CELL_META$xcenter, 
                                     CELL_META$ylim[1], 
                                     CELL_META$sector.index, 
                                     facing = "clockwise", 
                                     niceFacing = TRUE, 
                                     adj = c(0, 0.5))
                       },
             bg.border = NA)

## Escrevendo o nome dentro do setor #

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE,
  directional = 1,
  direction.type = c("arrows","diffHeight"),
  link.arr.type = "big.arrow",
  diffHeight  = -mm_h(2),
  link.sort = TRUE,
  annotationTrack = c("grid", "axis"),
  annotationTrackHeight = mm_h(5)
)

for(si in get.all.sector.index()) {
  xlim = get.cell.meta.data("xlim", sector.index = si, track.index = 1)
  ylim = get.cell.meta.data("ylim", sector.index = si, track.index = 1)
  circos.text(mean(xlim), mean(ylim), si, sector.index = si, track.index = 1, 
              facing = "bending.inside", niceFacing = TRUE, col = "white")
}

## Colocando condicoes para escrever o nome #

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE,
  directional = 1,
  direction.type = c("arrows","diffHeight"),
  link.arr.type = "big.arrow",
  diffHeight  = -mm_h(2),
  link.sort = TRUE,
  annotationTrack = c("grid","axis"),
  preAllocateTracks = list(track.height = max(strwidth(unlist(dimnames(data_long)))))
)

circos.track(track.index = 1, 
             panel.fun = function(x, y) {
               xlim = get.cell.meta.data("xlim")
               ylim = get.cell.meta.data("ylim")
               sector.name = get.cell.meta.data("sector.index")
               xplot = get.cell.meta.data("xplot")
               
               if(abs(xplot[2] - xplot[1]) < 30) {
                 circos.text(mean(xlim), 
                             ylim[1] + + mm_h(5), 
                             sector.name, facing = "clockwise",
                             niceFacing = TRUE, 
                             adj = c(0, 0.5), 
                             col = "red",
                             cex=0.6)
               } else {
                 circos.text(mean(xlim), 
                             ylim[1] + mm_h(7), 
                             sector.name, 
                             facing = "inside", 
                             niceFacing = TRUE, 
                             adj = c(0.5, 0), 
                             col= "blue",
                             cex=0.6)
               }
             },
             bg.border = NA)

## Alterando a marcacoes dos setores #

chordDiagram(
  data_long,
  transparency = 0.1,
  self.link = 2,
  symmetric = FALSE,
  directional = 1,
  direction.type = c("arrows","diffHeight"),
  link.arr.type = "big.arrow",
  diffHeight  = -mm_h(2),
  link.sort = TRUE,
  annotationTrack = c("grid"),
  preAllocateTracks = list(
    track.height = uh(5, "mm"),
    track.margin = c(uh(4, "mm"), 0))
)

circos.track(track.index = 2, 
             panel.fun = function(x, y) {
               xlim = get.cell.meta.data("xlim")
               ylim = get.cell.meta.data("ylim")
               sector.name = get.cell.meta.data("sector.index")
               xplot = get.cell.meta.data("xplot")
               
               if(abs(xplot[2] - xplot[1]) < 30) {
                 circos.text(mean(xlim), 
                             ylim[2], 
                             sector.name, facing = "clockwise",
                             niceFacing = TRUE, 
                             adj = c(0, 0.5), 
                             col = "red",
                             cex=0.6)
               } else {
                 circos.text(mean(xlim), 
                             ylim[2] + mm_h(10), 
                             sector.name, 
                             facing = "inside", 
                             niceFacing = TRUE, 
                             adj = c(0.5, 0), 
                             col= "blue",
                             cex=1.0)
                 circos.axis(h = "top",major.at=c(0,4,8,12), 
                             labels.cex = 0.25, 
                             sector.index = sector.name, 
                             track.index = 2,
                             minor.ticks =3)
               }
             },
             bg.border = NA)

rm(list = ls(all.names = TRUE))

######### Sexta Aula ####

#### Grafico de Mapa #

### Usando a ggplot2 #

## Instalando os pacotes auxiliares#

# Obs: alguns pacotes sao complicados de instalar, segue o truque #

install.packages("devtools")
devtools::install_github("ropensci/rnaturalearthhires")

#

install.packages('sf')
install.packages('rnaturalearth')
install.packages('rnaturalearthdata')
install.packages('rgeos')
install.packages('ggrepel')
install.packages('ggspatial')
install.packages('cowplot')
install.packages('googleway')
install.packages('libwgeom')
install.packages('rgdal')

## Carregando as bibliotecas basicas  #

library(ggplot2)
library(ggrepel)
library(ggspatial)
library(cowplot)
library(sf)
library(tidyverse)

## Criando o conjunto de dados #

library(rnaturalearth)
library(rnaturalearthdata)
library(rnaturalearthhires)

world <- ne_countries(scale = 'medium', returnclass = c('sf'))
class(world)

## Gerando nosso grafico #

# Definindo o tema do ggplot2 #

theme_set(theme_bw())

# Plotando o grafico #

ggplot(data = world) +
  geom_sf() +
  coord_sf()

# Adicionando titulo e legenda #

ggplot(data = world) +
  geom_sf() +
  coord_sf() + 
  xlab("Longitude") + ylab("Latitude") +
  ggtitle("World map", subtitle = paste0("(", length(unique(world$name)), " countries)"))

# Colorindo o grafico #

ggplot(data = world) + 
  geom_sf(color = 'black', fill = 'lightblue') +
  coord_sf()

ggplot(data = world) +
  geom_sf(aes(fill = pop_est)) +
  scale_fill_viridis_c(option = 'plasma', trans = 'sqrt') + 
  coord_sf()

ggplot(data = world) +
  geom_sf(aes(fill = income_grp)) + 
  coord_sf()

## Gerando outro grafico # 

# Manipulando os dados #

Brasil <- ne_states(country = 'Brazil', returnclass = c('sf'))
class(Brasil)

Brasil <- Brasil %>% 
  arrange(name)

regiao <- c('Norte','Nordeste','Norte','Norte','Nordeste','Nordeste',
            'Centro-Oeste','Sudeste','Centro-Oeste','Nordeste','Centro-Oeste',
            'Centro-Oeste', 'Sudeste','Norte', 'Nordeste', 'Sul','Nordeste', 
            'Nordeste', 'Sudeste', 'Nordeste', 'Sul', 'Norte' , 'Norte', 'Sul', 
            'Sudeste','Nordeste', 'Norte')

populacao <- c(894470,3351543	,861773,4207714,14930634,9187103,3055149,4064052,
               7113540,7114598,3526220,2809394,21292666,8690745,4039277,11516840,
               9616621,3281480,17366189,3534165,11422973,1796460,631181,7252502,
               46289333,2318822,1590248)

populacao <- populacao/1000000

Brasil <- Brasil %>% 
  mutate(regiao,populacao) %>% 
  select(name,regiao,populacao,everything())

View(Brasil)

capitais_posicoes <- tibble::tribble(
  ~cidade,             ~lat,     ~lon,
  'Aracaju',         -10.9100,	-37.0682,
  'Bel?m',           -6.7434,   -35.5172,
  'Belo Horizonte',  -19.9111,	-43.9273,
  'Boa Vista',        2.8231,	  -60.6762,
  'Bras?lia ',       -15.7804,	-47.9304,
  'Campo Grande',    -20.4494,	-54.6303,
  'Cuiab?',          -15.6018,	-56.0982,
  'Curitiba ',       -25.4205,	-49.2654,
  'Florian?polis ',  -27.5954,	-48.5485,
  'Fortaleza ',      -3.7174,	  -38.5429,
  'Goi?nia ',        -16.6873,	-49.2651,
  'Jo?o Pessoa',     -7.1159,	  -34.8646,
  'Macap? ',          0.0341,	  -51.0701,
  'Macei? ',         -9.6668,	  -35.7355,
  'Manaus ',         -3.1194,	  -60.0221,
  'Natal',           -5.7943,	  -35.1991,
  'Palmas ',         -10.2408,	-48.3565,
  'Porto Alegre',    -30.0327,	-51.2074,
  'Porto Velho',     -8.7615,	  -63.9008,
  'Recife',          -8.0475,	  -34.8776,
  'Rio Branco',      -9.9757,	  -67.8253,
  'Rio de Janeiro',  -22.9138,	-43.2010,
  'Salvador',        -12.9726,	-38.5017,
  'S?o Lu?s',        -2.5395,	  -44.2832,
  'S?o Paulo',       -23.5338,	-46.6403,
  'Teresina',        -5.0927,	  -42.8040,
  'Vit?ria',         -20.3164,	-40.3134,
)

# Gerando o Grafico #

ggplot(data = Brasil) +
  geom_sf() +
  coord_sf()

# Adicionando escala #

ggplot(data = Brasil) +
  geom_sf(aes(fill = regiao)) +
  annotation_scale(location = "bl", width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, "in"), pad_y = unit(0.5, "in"),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(-75, - 30), ylim = c(-35, 8))

# Adicionando as capitais #

ggplot(data = Brasil) +
  geom_sf(aes(fill = regiao)) +
  geom_point(data = capitais_posicoes, 
             mapping = aes(x = lon, y = lat), 
             colour = "black") +
  annotation_scale(location = "bl", width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, "in"), pad_y = unit(0.5, "in"),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(-75, - 30), ylim = c(-35, 8))

# Adicionando os nomes das capitais #

ggplot(data = Brasil) +
  geom_sf(aes(fill = regiao)) +
  geom_point(data = capitais_posicoes, 
             mapping = aes(x = lon, y = lat), 
             colour = "red") +
  annotation_scale(location = "bl", width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, "in"), pad_y = unit(0.5, "in"),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(-75, - 30), ylim = c(-35, 8)) +
  geom_text(data= capitais_posicoes,aes(x=lon, y=lat+ 0.35, label=cidade),
            color = "black", size = 2, fontface = "bold", check_overlap = FALSE,
            )

# Adicionando os nomes dos estados #

ggplot(data = Brasil) +
  geom_sf(aes(fill = regiao)) +
  geom_point(data = capitais_posicoes, 
             mapping = aes(x = lon, y = lat), 
             colour = "red") +
  annotation_scale(location = "bl", width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, "in"), pad_y = unit(0.5, "in"),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(-75, - 30), ylim = c(-35, 8)) +
  geom_text(data= capitais_posicoes,aes(x=lon, y=lat+ 0.35, label=cidade),
            color = "black", size = 2, fontface = "bold", check_overlap = FALSE,
  ) + 
  geom_text(data = Brasil,aes(x=longitude, y=latitude, label=postal),
            color = "grey22", size = 3, fontface = "bold", check_overlap = FALSE,
  )

# Adicionando legenda e editando os elementos nao graficos #

ggplot(data = Brasil) +
  geom_sf(aes(fill = regiao)) +
  geom_point(data = capitais_posicoes, 
             mapping = aes(x = lon, y = lat), 
             colour = 'red') +
  annotation_scale(location = 'bl', width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, 'in'), pad_y = unit(0.5, 'in'),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(-75, - 30), ylim = c(-35, 8)) +
  geom_text(data = Brasil,aes(x=longitude, y=latitude, label=postal),
            color = 'grey22', size = 3, fontface = 'bold', check_overlap = FALSE,
  ) +
  labs( title =  'Mapa do Brasil',
        x='Longitude',
        y='Latidude',
        fill = 'Regi?o') +
  theme(plot.title = element_text(size=18,face="bold", hjust = 0.5),
        axis.title=element_text(size=16,face="bold"),
        axis.text=element_text(size=14),
        legend.position = 'right',
        legend.direction = "vertical",
        legend.justification = "center",
        legend.background = element_rect(colour = "black"),
        legend.title = element_text(size = 12,face="bold"),
        legend.text = element_text(size = 11)
  )

# Usando o vetor populacao criado l? em cima #

ggplot(data = Brasil) +
  geom_sf(aes(fill = populacao)) +
  scale_fill_viridis_c(option = 'plasma', trans = 'sqrt') +
  geom_point(data = capitais_posicoes, 
             mapping = aes(x = lon, y = lat), 
             colour = 'red') +
  annotation_scale(location = 'bl', width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, 'in'), pad_y = unit(0.5, 'in'),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(-75, - 30), ylim = c(-35, 8)) +
  geom_text(data = Brasil,aes(x=longitude, y=latitude, label=postal),
            color = 'grey22', size = 3, fontface = 'bold', check_overlap = FALSE,
  ) +
  labs( title =  'Mapa do Brasil',
        x='Longitude',
        y='Latidude',
        fill = 'Populacao') +
  theme(plot.title = element_text(size=18,face="bold", hjust = 0.5),
        axis.title=element_text(size=16,face="bold"),
        axis.text=element_text(size=14),
        legend.position = 'right',
        legend.direction = "vertical",
        legend.justification = "center",
        legend.background = element_rect(colour = "black"),
        legend.title = element_text(size = 12,face="bold"),
        legend.text = element_text(size = 11)
  )

ggplot(data = Brasil) +
  geom_sf(aes(fill = populacao)) +
  scale_fill_viridis_c(option = 'viridis', trans = 'sqrt') +
  annotation_scale(location = 'bl', width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, 'in'), pad_y = unit(0.5, 'in'),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(-75, - 30), ylim = c(-35, 8)) +
  geom_text(data = Brasil,aes(x=longitude, y=latitude, label=postal),
            color = 'white', size = 3, fontface = 'bold', check_overlap = FALSE,
  ) +
  labs( title =  'Mapa do Brasil',
        x='Longitude',
        y='Latidude',
        fill = 'Populac?o \n em Milh?es') +
  theme(plot.title = element_text(size=18,face="bold", hjust = 0.5),
        axis.title=element_text(size=16,face="bold"),
        axis.text=element_text(size=14),
        legend.position = 'right',
        legend.direction = "vertical",
        legend.justification = "center",
        legend.background = element_rect(colour = "black"),
        legend.title = element_text(size = 12,face="bold"),
        legend.text = element_text(size = 11)
  )

### Desenhando Fluxos #

## Carregando bibliotecas #

library(ggplot2)
library(tidyverse)
library(readxl)

## Lendo dados #

matriz_fluxos <- read_excel('matriz_fluxos.xlsx', col_names = TRUE)
View(fluxos)

coordenadas <- read_excel('cordenadas_estados.xlsx', col_names = TRUE)
View(coordenadas)

informacoes_vertices <- read_excel('informacoes_adicionais.xlsx', col_names = TRUE)
View(inforamcoes_vertices)

# Corrigindo o dataframe fluxos #

matriz_fluxos <- column_to_rownames(matriz_fluxos, var= '...1')

# Tratando dados # 

fluxos <- matriz_fluxos %>%
  rownames_to_column %>%
  gather(key='key', value="value", -rowname)

colnames(fluxos) <- c("Origem","Destino","Valor")

fluxos <- as_tibble(fluxos)

fluxos <-fluxos[fluxos$Valor != 0,]

for(i in 1:nrow(fluxos)) {
  for(j in 1:nrow(coordenadas)){
    if(fluxos[i,1] == coordenadas[j,1]) {
      fluxos[i,4] = coordenadas[j,3]
      fluxos[i,5] = coordenadas[j,2]
    }
      
  }
  
}

for(i in 1:nrow(fluxos)) {
  for(j in 1:nrow(coordenadas)){
    if(fluxos[i,2] == coordenadas[j,1]) {
      fluxos[i,6] = coordenadas[j,3]
      fluxos[i,7] = coordenadas[j,2]
    }
    
  }
  
}

colnames(fluxos) <- c("Origem","Destino","Valor", 'x_O','y_O','x_D','y_D')  

fluxos$id <- as.character(c(1:nrow(fluxos)))

ggplot(data = Brasil) +
  geom_sf(aes(fill = informacoes_vertices$Valor)) +
  scale_fill_viridis_c(option = 'viridis', trans = 'sqrt', name = " Valor Total") +          
  geom_curve(data = fluxos, aes(x = x_O, y = y_O, xend = x_D, yend = y_D, color=Valor),
             curvature = -0.2, arrow = arrow(length = unit(0.01, "npc"))) +
  scale_colour_distiller(palette="Reds", name="Valor do Fluxo", guide = "colorbar") +
  annotation_scale(location = 'bl', width_hint = 0.5) +
  annotation_north_arrow(location = "bl", which_north = "true", 
                         pad_x = unit(0.75, 'in'), pad_y = unit(0.5, 'in'),
                         style = north_arrow_fancy_orienteering) +
  coord_sf(xlim = c(-75, - 30), ylim = c(-35, 8))

  