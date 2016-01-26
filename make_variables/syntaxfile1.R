

# We plot and save something
data(mtcars)

pdf("mygraphic1.pdf")
plot(mtcars$mpg, mtcars$disp)
dev.off()

