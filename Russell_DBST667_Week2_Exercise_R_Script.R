#Part 2aii
credit <- utils::read.csv("CreditApproval.csv")
head(credit, n=10)
#Part 2aiii
str(credit)
#Part 2bi
summary(credit)
#Part2bii
summary(credit$A14)
summary(credit$A2)
#Part2biii