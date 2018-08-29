install.packages("imager")

library(imager)
file <- system.file('extdata/HubbleDeepField.jng' ,package = 'imager')
marv <-load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/HubbleDeepField.png")
plot(marv)


#Resize Image
library(imager)
file <- system.file('extdata/HubbleDeepField.jng' ,package = 'imager')
marv <- load.image('HubbleDeepField.jng')
marv <- resize(marv, 250, 250)
plot(marv,main = "Resized")

#ReadImageThuWeb
install.packages("magick")

library(magick)
marv <- image_read('http://wallpapers4u.net/w/8/savannah-baby-animal-wildlife-elephant-hd-393c11.jpg')
print(marv)

#grayscale
layout(t(1:2))
plot(marv,rescale=FALSE)
plot(marv/2,rescale=FALSE)
cscale <- function(r,g,b) rgb(g,r,b)
plot(marv,colourscale=cscale,rescale=FALSE)
cscale <- function(v) rgb(0,0,v)
grayscale(marv) %>% plot(colourscale=cscale,rescale=FALSE)

#Invert Image
library(imager)
fpath <- system.file('exdata/HubbleDeepField.png' , package = 'imager')
im <- load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/HubbleDeepField.png")
imrotate(marv,270) %>% plot(main = "Rotating")


  
