library(splines)

load("mtcars_red.RData")


# fit linear model
res1 <- lm(mpg ~ disp, mtcars_red)

res2 <- lm(mpg ~ hp, mtcars_red)


res1a <- lm(mpg ~ ns(disp, df=3), mtcars_red)



save(res1, res2, res1a, mtcars_red, file="results.RData")
