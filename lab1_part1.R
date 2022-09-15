#exercise1
EPI_data <- read.csv(file.choose(),header = TRUE)
#or
#EPI_data <- read.xlsx(”<path>/2010EPI_data.xlsx")
# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# ???launches a simple data editor
EPI_data 			# prints out values EPI_data$EPI

names(EPI_data)<-as.matrix(EPI_data[1,])
EPI_data<-EPI_data[-1,]#remove the first row
EPI_data[]<-lapply(EPI_data,function(x) type.convert(as.character(x)))
EPI_data
View(EPI_data)
EPI<-EPI_data$EPI
EPI


tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array
E
View(E)
#other data
#GRUMP_data <- read.csv(”<path>/GPW3_GRUMP_SummaryInformation_2010.csv")

summary(E)
fivenum(EPI,na.rm = TRUE)#returns five number summary
stem(EPI)#茎叶图
hist.default(EPI)#条形图
hist(EPI, seq(30., 95., 1.0), prob=TRUE)#柱状图seq()
lines(density(EPI,na.rm=TRUE,bw=1.))#加入折线图
rug(EPI)#把2d的东西压缩成1d
help(stem)


plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)#culmulative density function
par(pty="s") 
qqnorm(EPI); qqline(EPI)#qqplot

x <- seq(30,95,1)
x
x2 <-seq(30,95,2)
x2

qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)
qqplot(qt(ppoints(250), df = 5), x2, xlab = "Q-Q plot for t dsn")
qqline(x2)

plot(ecdf(EPI_data$EPI),do.points=FALSE,verticals = TRUE)
plot(ecdf(EPI_data$EPI),do.points=TRUE,verticals = TRUE)







###variable:daly
DALY<-EPI_data$DALY
DALY


tf <- is.na(DALY) # records True values if the value is NA
D<- DALY[!tf] # filters out NA values, new array
D
View(E)
#other data
#GRUMP_data <- read.csv(”<path>/GPW3_GRUMP_SummaryInformation_2010.csv")


summary(D)
fivenum(D,na.rm = TRUE)#returns five number summary
stem(D)#茎叶图
hist.default(D)#条形图
#柱状图seq()
lines(density(D,na.rm=TRUE,bw=1.))#加入折线图
rug(D)#把2d的东西压缩成1d
help(stem)


plot(ecdf(D), do.points=FALSE, verticals=TRUE)#culmulative density function
par(pty="s") 
qqnorm(D); qqline(D)#qqplot



plot(ecdf(EPI_data$DALY),do.points=FALSE,verticals = TRUE)
plot(ecdf(EPI_data$DALY),do.points=TRUE,verticals = TRUE)




###variable: water-h
W<-EPI_data$WATER_H
W


tf <- is.na(W) # records True values if the value is NA
W <- W[!tf] # filters out NA values, new array
W
View(W)
#other data
#GRUMP_data <- read.csv(”<path>/GPW3_GRUMP_SummaryInformation_2010.csv")

summary(W)
fivenum(W,na.rm = TRUE)#returns five number summary
stem(W)#茎叶图
hist.default(W)#条形图
hist(W, seq(30., 95., 1.0), prob=TRUE)#柱状图seq()
lines(density(W,na.rm=TRUE,bw=1.))#加入折线图
rug(W)#把2d的东西压缩成1d
help(stem)


plot(ecdf(W), do.points=FALSE, verticals=TRUE)#culmulative density function
par(pty="s") 
qqnorm(W); qqline(W)#qqplot

#qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
#qqline(x)

plot(ecdf(EPI_data$WATER_H),do.points=FALSE,verticals = TRUE)
plot(ecdf(EPI_data$WATER_H),do.points=TRUE,verticals = TRUE)


#compare
boxplot(E,W)
boxplot(E,D)
boxplot(D,W)
boxplot(E,D,W)
qqplot(E,W)
qqplot(E,D)
qqplot(D,W)
qqplot(E,D,W)

EN<-EPI_data$ENVHEALTH
EN
tf <- is.na(EN) # records True values if the value is NA
EN <- EN[!tf] # filters out NA values, new array
EN

EC<-EPI_data$ECOSYSTEM
EC
tf <- is.na(EC) # records True values if the value is NA
EC <- EC[!tf] # filters out NA values, new array
EC

a<-EPI_data$AIR_H
a
tf <- is.na(a) # records True values if the value is NA
a <- a[!tf] # filters out NA values, new array
a


b<-EPI_data$BIODIVERSITY
b
tf <- is.na(b) # records True values if the value is NA
b <- b[!tf] # filters out NA values, new arrayae
b

boxplot(E,D,W,EN,EC,a,b)


#exercise2
#Landlock
EPILand<-EPI_data$Landarea
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
#
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
