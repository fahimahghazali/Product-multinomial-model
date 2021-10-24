#question 2#
roadcas <- matrix(c(65, 14, 22, 25, 6, 773, 475, 488, 310, 146, 4343, 4134, 3992, 9850, 2556), nrow = 5, byrow = F)
dimnames(roadcas) <- list(c("pedestrian", "pedal cycle", "powered 2 wheeler","car", "other"), c("fatal", "serious", "slight"))
names(dimnames(roadcas)) <- c("mode of transport", "casualty severity")
roadcas
addmargins(roadcas)

library(xtable)
xtable(addmargins(roadcas))

prop.table(roadcas, 1)

#question 3#
barplot(prop.table(roadcas, 1), beside = T, legend.text = F, ylim = c(0, 1), ylab = "Proportions", xlab = "Casual Severity", main = "", col = c("green", "purple", "red", "pink", "yellow"))
legend("topleft", c("pedestrian", "pedal cycle", "powered 2 wheeler","car", "other"), fill = c("green", "purple", "red", "pink", "yellow"))

#question 4#
test <- chisq.test(roadcas)
names(test)
test$expected

qchisq(0.95, df = 8)

#question 5#
test$residuals
test$residuals^2
test$stdres

#question 6#
R = 5
C = 3

ns=0
for (j in 1:R){
  ns[j]<-sum(roadcas[j,])
}

ns

N=sum(roadcas)
N

p.hat=0
for(k in 1:C){
  p.hat[k]<- sum(roadcas[,k])/N
}

p.hat
sum(p.hat)


B=5000
ysim=matrix(, nrow = R, ncol = C)
test.sim=0
for (i in 1:B){
for (k in 1:R){
ysim[k,]<- rmultinom(n=1, size=ns[k], prob=p.hat)
}
test.sim[i]<- chisq.test(ysim, p=p.hat)$statistic
}


hist(test.sim, freq=F, ylim=c(0, 0.15), main = "", xlab = "x")
lines(density(test.sim), col="red")

xx=seq(from=0, to=20, length.out=600)
dxx=dchisq(xx, df=8)
lines(xx, dxx, col="blue")
legend('topright', c('simulated test statistic','chisq pdf'), lty=1,col=c('red','blue'), bty='n',cex= 1.0)

#question 7a#
dest1 <- (773/5181) - (310/10185); dest1
ese.dest1 <- sqrt(((773/5181)*(1-773/5181)/5181)+((310/10185)*(1-310/10185)/10185))

ci1a <- dest1 - qnorm(0.975)*ese.dest1
ci2a <- dest1 + qnorm(0.975)*ese.dest1

ci1a ; ci2a

#question 7b#
dest2 <-(475/4623) - (4134/4623); dest2
cov2 <- -(475/4623)*(4134/4623) ; cov2
ese.dest2 <- sqrt(((475/4623)*(1-475/4623)/4623)+((4134/4623)*(1-4134/4623)/4623)-(2*cov2/4623))

ci1b <- dest2 - qnorm(0.975)*ese.dest2
ci2b <- dest2 + qnorm(0.975)*ese.dest2

ci1b ; ci2b

