rm(list=ls(all=TRUE))





library(plyr)

n.obs <- 20
n.models <- 5
sigma2 <- 1
W <- c(.1,.4, .01, .01, .48)

raw.predictions <- matrix(rnorm(n.obs*n.models, mean=50), ncol=n.models)
act.outcomes <- matrix(rnorm(n.obs, mean=50), ncol=1)

out <- as.matrix(data.frame(lapply(1:n.models,function(i,y, mu){
                                                 dnorm(y,mean=mu[,i])
                                               },
                                               y=act.outcomes,mu=raw.predictions)))

colnames(out) <- NULL
out


out2
t(out)
colnames(out2) <- NULL
out2-out

raw.predictions
act.outcomes

z.numerator[2,1]
g[2,1]*.1

z.numerator
g%*%

(g%*%
 (matrix(W, ncol=n.models, nrow=n.models, byrow=T))
try2 <-
try2-z.numerator
dim(g)
dim(z.numerator)
g

dim(g)
dim(as.matrix(W))
t(g)
as.matrix(W)
