

load("mtcars_red.RData")

pdf("mygraphic_red.pdf")
plot(mtcars_red$mpg, mtcars_red$disp)
dev.off()
