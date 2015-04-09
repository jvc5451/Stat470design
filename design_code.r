data=read.csv("/Users/Emily/Desktop/Design Responses Final.csv", sep=",", header=T)[,2:12]
head(data)
attach(data)
df=data.frame(data)
df.nine<-subset(df, semester==9)
df.fullnonine<-subset(df, semester<9 & credits>=12)



#######Descriptive Statistics#########
install.packages("pastecs")
library(pastecs)
data2<-cbind(semester, credits, job, hours, PSUstudent, studenttype, moneyrank, studentloan, workstudy, gender)
stat.desc(data2)
options(scipen=100)
options(digits=2)
stat.desc(data2, basic=F)
data2<-cbind(semester, credits, hours, moneyrank)
stat.desc(data2, basic=F)