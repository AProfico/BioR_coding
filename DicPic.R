DigPic<-function(img,colline="red",ltyline=1){
x11()
plot(seq(0, dim(img)[2], length.out = 10), seq(0,dim(img)[1], length.out = 10), type = "n", xlab = "x", 
       ylab = "y", asp = 1, tck = 0, xaxt = "n", yaxt = "n")
rasterImage(img, 1, 1, dim(img)[2], dim(img)[1])
fix <- locator(n = 2, type = "p", col = "black", 
                 cex = 4, pch = 21, bg = "red")

pt1<-c(fix$x[1],fix$y[1])
pt2<-c(fix$x[2],fix$y[2])

points(rbind(pt1,pt2),col=colline,type="l",lwd=5,lty=ltyline)
Dist<-dist(rbind(pt1,pt2))
out<-list(coo=rbind(pt1,pt2),distance=Dist) 
return(out)  
}

image<-readJPEG("baboon_skull_cranium_Lateral.jpg",native = T)

Meas1<-DigPic(image,colline = "blue",ltyline=3)
Meas2<-DigPic(image)

Meas1$distance*40/Meas2$distance
