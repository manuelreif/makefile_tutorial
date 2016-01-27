

load("results.RData")

library(splines)

pdf("./graphics/lm1.pdf")
plot(res1)
with(mtcars_red,plot(mpg ~ disp))
abline(res1)
dev.off()


pdf("./graphics/lm1_spline.pdf")
with(mtcars_red,plot(mpg ~ disp))
myseq <- seq(70, 360, 0.5)
pred1 <- predict(object = res1a, newdata = data.frame(disp=myseq))
lines(myseq, pred1)
dev.off()


pdf("./graphics/lm2.pdf")
plot(res1)
with(mtcars_red,plot(mpg ~ hp))
abline(res2)
dev.off()