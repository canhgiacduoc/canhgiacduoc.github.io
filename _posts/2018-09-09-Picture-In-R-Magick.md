---
layout: post
title: "Xử lý ảnh dùng R và gói lệnh Magick - P1: Cơ bản"
modified: 2018-08-23
tags: [R,data visualisation]
image:
  feature: prescrire-pv.jpg
  credit: nguyenkhacdung
  creditlink: https://desdaughter.com/2013/05/08/petit-manuel-de-pharmacovigilance-et-pharmacologie-clinique-sur-les-effets-nocifs-des-medicaments/
#output: html_notebook
---





Thông thường R dùng rất phổ biến để phân tích và biểu diễn số liệu, tuy nhiên R có thể làm được rất nhiều thao tác xử lý ảnh và quan trong nhất là tính "reproductive" (lặp lại) đặc trưng khi dùng R. Thông qua các ví dụ về xử lý ảnh, R có thể thay thế hoàn hảo cho các phần mềm xử lý ảnh thông dùng ở một vài thao tác, tạo ảnh động và các thuật toán sâu hơn dựa trên database là dữ liệu ảnh.

# Giới thiệu chung và setup 

Cài đặt magick package Version 1.9 trên CRAN : `install.packages(magick)`

Thông tin về gói lệnh và cú pháp: `library(magick); ?magick`





{% highlight r %}

library(magick)
?magick
dl_from_dropbox <- function(x, key) {
  require(RCurl)
  bin <- getBinaryURL(paste0("https://dl.dropboxusercontent.com/s/", key, "/", x),
                      ssl.verifypeer = FALSE)
  con <- file(x, open = "wb")
  writeBin(bin, con)
  close(con)
  message(noquote(paste(x, "read into", getwd())))                        
}

{% endhighlight %}


# Đọc và ghi ảnh  





![example](https://www.dropbox.com/s/p1ycjtve8y3t36q/prescrire-pv.jpg?raw=1)

## Link HTML  

![Time-to-onset Signal](https://www.dropbox.com/s/t5xbmb8ib9q781h/Time-to-onset%20signal%20detection.nb.html?raw=1)

![Time-to-onset Signal](https://www.dropbox.com/s/t5xbmb8ib9q781h/Time-to-onset%20signal%20detection.nb.html?dl=0)

![Time-to-onset Signal](https://www.dropbox.com/s/t5xbmb8ib9q781h/Time-to-onset%20signal%20detection.nb.html)

## Other example 


<figure>
<a href="https://www.dropbox.com/s/fcs6ogrpsbrx392/Canhgiacduoc_Icon.png?raw=1"><img src="https://www.dropbox.com/s/fcs6ogrpsbrx392/Canhgiacduoc_Icon.png?raw=1" alt=""></a>
</figure>

## Đọc ảnh procedure
 

```r
# gg=mtcars %>% ggplot(aes(disp,mpg)) +geom_point(aes(col=as.factor(cyl))) 

# upload_get_link_image_dropbox(gg,"image-test1.png")
```
 
 
 
test 2

[Link tới 1 file html](https://rawgit.com/canhgiacduoc/canhgiacduoc.github.io/master/_posts/ggvis-ggplot.html)



.... to be continued!

[Link1](https://rawgit.com/canhgiacduoc/canhgiacduoc.github.io/master/_posts/Picture-In-R-Magick.nb.html)

[Link1](https://www.dropbox.com/s/t5xbmb8ib9q781h/Time-to-onset%20signal%20detection.nb.html?raw=1)



                        
Status (On projet Aug 2018) 


---
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a> 

©Canhgiacduoc(2017)





