
help('read.csv')
multivariate<-read.csv(file.choose(),header = TRUE)
multivariate
attach(multivariate)
names(multivariate)
multivariate

#create some scatterplots
plot(Income,Immigrant,main = 'Scatterplot')
plot(Immigrant, Homeowners)

#fitting linear models using lm function
help(lm)
mm<-lm(Homeowners~Immigrant)
mm
plot(Immigrant, Homeowners)
abline(mm)
abline(mm,col=2,lwd=3)

summary(mm)
attributes(mm)
mm$coefficients









