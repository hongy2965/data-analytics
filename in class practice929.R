set.seed(12345)
help(par)

par(mar = rep(0.2,4))
data_Matrix <-matrix(rnorm(400), nrow = 40)
image(1:10, 1:40, t(data_Matrix)[,nrow(data_Matrix):1])

par(mar=rep(0.2,4)) 
heatmap(data_Matrix)

help("rbinom")
set.seed(678910)
for(i in 1:40){
  # flipping a coin and getting the data
  coin_Flip <- rbinom(1, size = 1, prob = 0.5)
  # if the coin is "Heads", add a common pattern to that row, if(coin_Flip){
  data_Matrix[i, ] <- data_Matrix[i, ] + rep(c(0,3), each =5)
  }
}

par(mar= rep(0.2, 4))
image(1:10, 1:40, t(data_Matrix)[, nrow(data_Matrix):1])

par(mar= rep(0.2, 4))
heatmap(data_Matrix)

hh<-hclust(dist(data_Matrix))#hclust Hierarchical cluster analysis on a set of dissimilarities and methods for analyzing it.
data_Matrix_ordered<-data_Matrix[hh$order,]
par(mfrow=c(1,3))

image(t(data_Matrix_ordered))[,row(data_Matrix_ordered):1]
plot(rowMeans(data_Matrix_ordered), 40:1, ,xlab='the row mean', ylab='row', pch=19)
plot(colMeans(data_Matrix_ordered), xlab='column', ylab='column mean', pch=19)








