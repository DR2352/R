x <- rnorm(10,mean=rep(1:5,each=2),sd=0.7)
y <- rnorm(10,mean=rep(c(1,9),each=5),sd=0.1)
dataFrame<- data.frame(x=x,y=y) 
set.seed(143)
dataMatrix<-as.matrix(dataFrame)[sample(1:10),]
heatmap(dataMatrix)
