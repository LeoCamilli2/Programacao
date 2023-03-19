library(dplyr)
glimpse(microdados_enade_2018)

installed.packages("tidyverse")
installed.packages("ggplot2")

library(tidyverse)
library(magrittr)
library(ggplot2)

dados <- microdados_enade_2018 %>% filter(CO_GRUPO==13,CO_TURNO_GRADUACAO==1|CO_TURNO_GRADUACAO==4,TP_PRES==555)%>%select(NT_GER,CO_TURNO_GRADUACAO) %>% rename(NOTA=NT_GER,TURNO=CO_TURNO_GRADUACAO) %>%na.omit() 

summary(dados)

rm(microdados_enade_2018)

dados$TURNO_NOME <-ifelse(dados$TURNO==4,"Noturno","Matutino")

summary(dados)

dados$TURNO_NOME<-as.factor(dados$TURNO_NOME) 

Noturno<-dados$NOTA[dados$TURNO_NOME=="Noturno"]
Matutino<-dados$NOTA[dados$TURNO_NOME=="Matutino"]

mean(Noturno)
mean(Matutino)
mean(dados$NOTA)

median(Noturno)
median(Matutino)
median(dados$NOTA)

range(Noturno)
range(Matutino)
range(dados$NOTA)

var(Noturno)
var(Matutino)
var(dados$NOTA)

sd(Noturno)
sd(Matutino)
sd(dados$NOTA)

library(psych)
describe(dados$NOTA)
describeBy(dados$NOTA,group=dados$TURNO_NOME)

TabelaDescritiva <-
dados %>% group_by(TURNO_NOME)%>%summarise("Média"=mean(NOTA),"Desvio Padrão"=sd(NOTA),"Variância"=var(NOTA),"Mediana"=median(NOTA))

library(ggplot2)
ggplot(TabelaDescritiva,aes(x=TURNO_NOME,y=Média))+geom_col(color="black",fill="light green")+geom_errorbar(aes(ymin=Média-'Desvio Padrão',ymax=Média+'Desvio Padrão'),width=0,3)


t.test(dados$NOTA[dados$TURNO_NOME=="Noturno"],mu=mean(dados$NOTA[dados$TURNO_NOME=="Matutino"]))

t.test(dados$NOTA[dados$TURNO_NOME!="Noturno"],mu=mean(dados$NOTA[dados$TURNO_NOME!="Matutino"]))


t.test(NOTA~TURNO_NOME,dados,var.equal=FALSE)

library(nortest)
nortest::sf.test(dados$NOTA[dados$TURNO_NOME=="Matituno"])

pearson.test(dados$NOTA)
lillie.test(dados$NOTA)

library(car)
leveneTest(NOTA~TURNO_NOME,dados,center=mean)
