data(AirPassengers) 
plot(AirPassengers,type="l")

data("iris")
barplot(iris$Petal.Length) 
barplot(iris$Sepal.Length,col = brewer.pal(3,"Set1"))
barplot(table(iris$Species,iris$Sepal.Length),col = brewer.pal(3,"Set1")) 
