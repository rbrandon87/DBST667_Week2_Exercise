#Part 2aii
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
head(credit, n=10)
#Part 2aiii
str(credit)
#Part 2bi
summary(credit)
#Part2bii
summary(credit$A14)
summary(credit$A2)
#Part2biii
summary(credit$A1)
summary(credit$A4)
#Part2cii
install.packages("discretization")
install.packages("arules")
library(discretization)
library(arules)
summary(credit$A2)
credit$A2<-discretize(credit$A2, "interval", breaks=6)
summary(credit$A2)
rm(credit)
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
summary(credit$A2)
credit$A2<-discretize(credit$A2, "frequency", breaks=6)
summary(credit$A2)
rm(credit)
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
summary(credit$A2)
credit$A2<-discretize(credit$A2, "cluster", breaks=6)
summary(credit$A2)
