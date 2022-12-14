data(iris) 
par(mfrow=c(2,2))
boxplot(iris$Sepal.Length,col="red") 
boxplot(iris$Sepal.Length~iris$Species,col="red") 
boxplot(iris$Sepal.Length~iris$Species,col=heat.colors(3)) 
boxplot(iris$Sepal.Length~iris$Species,col=topo.colors(3)) 
boxplot(iris$Petal.Length~iris$Species)