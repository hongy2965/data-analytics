#svm 
data("iris")
head(iris) # inspecting the first six rows of the dataset str(iris) # structure of the dataset
library(ggplot2) 
library(e1071)

qplot(Petal.Length, Petal.Width, data=iris, color = Species)

help("svm")
svm_model1 <- svm(Species~., data = iris)

summary(svm_model1)
#为什么slice里的sepal length和width值等于3和4
plot(svm_model1, data = iris, Petal.Width~Petal.Length, slice = list(Sepal.Width = 3, Sepal.Length = 4))

#预测
pred1 <- predict(svm_model1, iris)
table1 <- table(Predicted = pred1, Actual = iris$Species) 
table1

#计算精确度
Model1_accuracyRate = sum(diag(table1))/sum(table1)
Model1_accuracyRate

Model1_MissClassificationRate = 1 - Model1_accuracyRate
Model1_MissClassificationRate


#kernal=linear
svm_model2 <- svm(Species~., data = iris, kernel = "linear")
summary(svm_model2)
plot(svm_model2, data = iris, Petal.Width~Petal.Length, slice = list(Sepal.Width = 3, Sepal.Length = 4))
pred2 <- predict(svm_model2, iris)

table2 <- table(Predicted = pred2, Actual = iris$Species) 
table2

Model2_accuracyRate = sum(diag(table2))/sum(table2) 
Model2_accuracyRate

Model2_MissClassificationRate = 1 - Model2_accuracyRate 
Model2_MissClassificationRate

#kernel =“polynomial”
svm_model3 <- svm(Species~., data = iris, kernel ='polynomial')
summary(svm_model3)
plot(svm_model3, data = iris, Petal.Width~Petal.Length, slice = list(Sepal.Width = 3, Sepal.Length = 4))
pred3 <- predict(svm_model3, iris)
table3 <- table(Predicted = pred3, Actual = iris$Species) 
table3
Model3_accuracyRate = sum(diag(table3))/sum(table3) 
Model3_accuracyRate

Model3_MissClassificationRate = 1 - Model3_accuracyRate 
Model3_MissClassificationRate

