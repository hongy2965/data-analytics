days<-c('Mon','Tue','Wed','Thur','Fri','Sat','Sun')
temp<-c(28,30.5,32,31.2,29.3,27.9,26.4)
snowed<-c('T','T','F','F','T','T','F')
help('data.frame')
RPI_weather_week<-data.frame(days,temp,snowed)

RPI_weather_week

str(RPI_weather_week)
summary(RPI_weather_week)




RPI_weather_week[1,]
RPI_weather_week[,1]

RPI_weather_week[,'snowed']
RPI_weather_week[,'days']
RPI_weather_week[,'temp']
RPI_weather_week[1:5,c('days','temp')]#how to extract the particular rows columns 
RPI_weather_week$temp
subset(RPI_weather_week,subset = snowed=TRUE)#subset里抽取特定行列以及里面的具体要求


#descending order
dec.snow<-order(-RPI_weather_week$temp)
                # 抽取顺序前方有-
dec.snow

#creating dataframes

empty.DataFrame<-data.frame()
v1<-1:10
v1
v2<-letters[1:10]
v2
df<-data.frame(col.name.1=v1,col.name.2=v2)
df

