install.packages("imager")

library(imager)
file <- system.file('extdata/parrots.png' ,package = 'imager')
marv <-load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/parrots.png")
plot(marv)


#Resize Image
library(imager)
file <- system.file('extdata/parrots.jpg' ,package = 'imager')
marv <- load.image('parrots.jpg')
marv <- resize(marv, 250, 250)
plot(marv,main = "Resized")

#ReadImageThruWeb
install.packages("magick")

library(magick)
marv <- image_read('https://i.pinimg.com/originals/40/81/47/408147adeaffa8f3437acaf065049d31.png')
print(marv)

#grayscale
layout(t(1:2))
plot(marv,rescale=FALSE)
plot(marv/2,rescale=FALSE)
cscale <- function(r,g,b) rgb(g,r,b)
plot(marv,grayscale=cscale,rescale=FALSE)
cscale <- function(v) rgb(0,0,v)
grayscale(marv) %>% plot(grayscale=cscale,rescale=FALSE)


#Invert Image
library(imager)
fpath <- system.file('exdata/parrots.png' , package = 'imager')
marv <- load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/parrots.png")
imrotate(marv,270) %>% plot(main = "Rotating")


  
