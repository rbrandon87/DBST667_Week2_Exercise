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
#Part2civ
rm(credit)
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
credit$A1 <- NULL
View(credit)
#Part2di
rm(credit)
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
apply(credit, 2, function (credit) sum(is.na(credit)))
#Part2dii
credit$A2[is.na(credit$A2)]<-mean(credit$A2, na.rm=TRUE)
apply(credit, 2, function (credit) sum(is.na(credit)))
#Part2dv
rm(credit)
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
credit_sorted<-credit[order(credit$A6), ]
head(credit_sorted$A6)
#Part2ei
plot(table(credit$A6), type="h", col="blue")

