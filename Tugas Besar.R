setwd("D:/Tugas Besar")
dataset <- read.csv("lenses.csv", sep = ",")
head(dataset)
install.packages("C50")
install.packages("printr")
library(C50)
library(printr)
model <- C5.0(contact.lenses ~., data = dataset)
model
summary(model)
plot(model)
datatesting <- dataset[,1:5]
predictions <- predict(model, datatesting)
table(predictions, dataset$contact.lenses)
