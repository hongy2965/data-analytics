install.packages("ISLR")
library(ISLR)
data("Auto")
head(Auto)

summary(Auto$mpg)
fivenum(Auto$mpg)
hist(Auto$mpg)
mean(Auto$weight)
median(Auto$horsepower)
#qq box
help('read.csv')
EPI<-read.csv(file.choose(),header = TRUE)
EPI$X.12
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
help('qqnorm')
par(pty='s')
qqnorm(EPI)
qqline(EPI)

plot(ecdf(EPI$DALY),do.points=FALSE,verticals=TRUE)
boxplot(EPI$X.12)

#linear regression
help('read.csv')
m<-read.csv('https://dl.boxcloud.com/d/1/b1!_j_aQF_d6rqHTQnCvezS4fMWoFDKZAJ05Fuh-iTXyEJOiVb8TZ_HpzqODomZA5p_I8RBX3NAXVmEWJ3Ep6zphEVHZO-Iu7FvBt9BnbZBNvxlxdzeWZIscBE2pQ-_vCnNHbc88-44HOSwCsfQIG1qYHhudboiuDmMDWvokRSpnH3pX_DoA0vLC_kZI3yJTOf8CAfXSUXLXtORziX8Uk0N3eh8Valp6h6amyaPVujgoxg078SmAkZSkgXBvfyH16i2CNQ3ShyjmFmWMNmuWyv6DHbOE5pNWQ88BnXxMc4WVePnOndPJdsMRPdMBeypBTyk2B8ULeUz4IGF6hXzhcW_FxC0A512inBvVWFXz-JTJOyacHFGGyylJuFgc7Dxm_-ApdbNzfn7vsghzsh92CgkVrC5AhozkWtA_FD6Hib0tUFS-gRqqsLbQBPxFc9Zz5Cq2cNfjg6ESkKbibEiNdyiN3itDSfVW62S7eU5RFETFXG7Mg5G7rDXGwI3Oj-W4skue1c9ZEbAY55adv8r2RY-KBIz6N_ejtm4_JZY1iokLx2wTxma7VfOiv1o-qK2__4ZdeNcHFLsLxwOpw_JMMg2C37CpjnweE_zki1GlYHonlXDqyFdJ7wPt3FkQ3qXhKsvecTafQce18L_tKqGiqPSjt3jF9aDGktZpNzGABBw0ff_-2e6IiAgXchUAsI-wQ_M2v04schfzdI7BQICnFwM2hulkDOFnD_b7CENVpprAsmn10PvMyth_EZk0XSVsQd0oe71WnANtftHR3poPcuE8woIisUjNUm_oDQp7SCzK4Ph6ejon8YqW4CdCDEz-QJnWbI8vgzG_HFRODHNhmnxgVrqDY2Z_x7feS8Eh65l2SJWO0RWlKJuec8x-dw_p0TDM3QI44QutNaQwv613FvaBwL0ICub-_tofBpSlQwx4990_o2snzQuBMxeRB7BzKhQpr5G_KQFUTWYcftLlirN_wfPMBNFU45bvMXMcByvWI57fem-remdicII0qsuOaZUXdgNif6dx6ec_d-z2FjzFCMefrk0Ki0tVR3NVB3toDQBf6DCyPF62SnWbtvXdSTmrbVf7oqjzQm1hZSvnC0EjT96ukgNnY23_JuCp7_bvdgj_Zv2W2M_Od6uDTAwLgCDV8zXwt_tFG3_XKlX_N02xXpltgSsESzdk6I33Ufm7gCethq9k3-r7sYVJATVCDW_wzAhz2fTb10YUoSv-955PjCJSraRIuCROSUvoNLW6N4dPflg95gbF8IpN0uMsxM./download')
help('read.csv')
data1<-read.csv(file.choose(),header = TRUE)
attach(data1)
mm<-lm(Homeowners~Immigrant)
mm


#ggplot eg
plot(mtcars$wt,mtcars$mpg)
library(ggplot2)
qplot(mtcars$wt,mtcars$mpg)
qplot(wt,mpg,data=mtcars)#先用ggplot输入数据
ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()#变量映射什么 aes,geom+图形类型
plot(pressure$temperature,pressure$pressure,type = 'l')
points(pressure$temperature,pressure$pressure)#加point

lines(pressure$temperature,pressure$pressure/2,col='red')#原图基础上加line
points(pressure$temperature,pressure$pressure/2,col='blue')#原图基础上加point
library(ggplot2)
qplot(pressure$temperature,pressure$pressure,geom='line')
ggplot(pressure,aes(x=temperature,y=pressure))+geom_point()+geom_line()#线图和散点图的不同作图方式




#creating bar graphs

barplot(BOD$demand,names.arg = BOD$Time)#柱子名称
table(mtcars$cyl)
barplot(table(mtcars$cyl))
qplot(mtcars$cyl)#这里中间有间隔
qplot(factor(mtcars$cyl))#factor变成discrete
#BAR GRAPHS OF COUNTS
qplot(factor(cyl),data=mtcars)
ggplot(mtcars,aes(x=factor(cyl)))+geom_bar()





#creating histograms using ggplot
hist(mtcars$mpg)
hist(mtcars$mpg,breaks = 10)#specify number of bins using break
qplot(mtcars,aes(x=mpg))+geom_histogram(binwidth = 5)
