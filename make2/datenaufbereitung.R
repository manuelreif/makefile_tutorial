

data(mtcars)


# wir treffen eine willkürliche auswahl
mtcars_red <- mtcars[mtcars$gear > 3, 1:7]
# man kann sich hier beliebige Manipulationen vorstellen

save(mtcars_red, file="mtcars_red.RData")



