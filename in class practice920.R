


hist(EPI,seq(30.,95.,1.0),prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.))
rug(EPI)

xn<-seq(30,95,1)
qn<-dnorm(xn,mean=63,sd=5,log=FALSE)
lines(xn,qn)
lines(xn,.4*qn)
ln<-dnorm(xn,mean=44,sd=5,log=FALSE)
lines(xn,.26*ln)


