####LOCAL####
library(imager)
install.packages("magick")

file <- system.file('extdata/magnus.jpg' ,package = 'imager')
marvs <-load.image(file)
plot(marvs)


file <- system.file('extdata/magnus.jpg' ,package = 'imager')
marvs <- load.image(file)
marvs<- resize(marvs, 250, 250)
plot(marvs,main = "Resized")


####WEB####
marv <- image_read('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-Vx634e-T3IbKlu3pZpuZGYV0PHl1T3KZuXO65lTAuohIpgUW')
print(marv)



