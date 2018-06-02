#Part 2aii
#Load data and read first 10 rows
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
head(credit, n=10)
#Part 2aiii
#Run str command on credit dataset
str(credit)
#Part 2bi
#Run summary command on credit dataset
summary(credit)
#Part2bii
#Run summary command on specific attributes
summary(credit$A14)
summary(credit$A2)
#Part2biii
summary(credit$A1)
summary(credit$A4)
#Part2cii
#install and load necessary packages for discretization
#Run interval, frequency, and clustering on same column for comparing
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
#Remove an atttribute and view dataset
rm(credit)
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
credit$A1 <- NULL
View(credit)
#Part2di
#View attributes with missing values
rm(credit)
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
apply(credit, 2, function (credit) sum(is.na(credit)))
#Part2dii
#Replace missing values with attribute mean 
credit$A2[is.na(credit$A2)]<-mean(credit$A2, na.rm=TRUE)
apply(credit, 2, function (credit) sum(is.na(credit)))
#Part2dv
#Sort the dataset
rm(credit)
credit <- utils::read.csv(file="CreditApproval.csv", head=TRUE, sep=",")
credit_sorted<-credit[order(credit$A6), ]
head(credit_sorted$A6)
#Part2ei
#Create a plot
plot(table(credit$A6), type="h", col="blue")

