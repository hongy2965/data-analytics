##decision tree classifier


library(rpart)
library(rpart.plot)

iris
dim(iris)
#creating a sample
s_iris <- sample(150,100)
s_iris
#usingsampkr to de the training and test
iris_train <-iris[s_iris,]
iris_test <-iris[-s_iris,] 
dim(iris_test)
dim(iris_train)
#generating decision tree model
dectionTreeModel <- rpart(Species~., iris_train, method = "class")
dectionTreeModel#~. means automatically follows the column behind
rpart.plot(dectionTreeModel)

##knn
help('read.csv')
abalone<-read.csv(file.choose(),header = TRUE)
abalone


colnames(abalone) <- c("sex", "length", 'diameter', 'height', 'whole_weight', 'shucked_wieght', 'viscera_wieght', 'shell_weight', 'rings' )
summary(abalone)
str(abalone)
summary(abalone$rings)
#break the variable
abalone$rings <- as.numeric(abalone$rings)
abalone$rings <- cut(abalone$rings, br=c(-1,8,11,35), labels = c("young", 'adult', 'old'))
abalone$rings <- as.factor(abalone$rings)
summary(abalone$rings)

aba <- abalone
aba$sex <- NULL#去掉非数字

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
  }
aba[1:7]<- as.data.frame(lapply(aba[1:7], normalize))
summary(aba$shucked_wieght)#all the values are between 0 and 1

ind <- sample(2, nrow(aba), replace=TRUE, prob=c(0.7, 0.3))
KNNtrain <- aba[ind==1,]
KNNtest <- aba[ind==2,]
sqrt(2918)
#k=55
#train and test data
ind <- sample(2, nrow(aba), replace=TRUE, prob=c(0.7, 0.3))
KNNtrain <- aba[ind==1,]
KNNtest <- aba[ind==2,]
sqrt(2918)

#using knn
library(class)
help("knn")

KNNpred <- knn(train = KNNtrain[1:7], test = KNNtest[1:7], cl = KNNtrain$rings, k = 55)
KNNpred
table(KNNpred)

#kmeans
library(ggplot2) # we will use ggplot2 to visualize the data.
head(iris) # first 6 rows of the
str(iris) #
summary(iris)


help("sapply")
sapply(iris[,-5], var)
summary(iris)

ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width, col= Species)) + geom_point()
ggplot(iris,aes(x = Petal.Length, y = Petal.Width, col= Species)) + geom_point()

set.seed(300)
k.max <- 12

wss<- sapply(1:k.max,function(k){kmeans(iris[,3:4],k,nstart = 20,iter.max = 20)$tot.withinss})
wss # within sum of squares.
plot(1:k.max,wss, type= "b", xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares") icluster <- kmeans(iris[,3:4],3,nstart = 20)
table(icluster$cluster,iris$Species)





