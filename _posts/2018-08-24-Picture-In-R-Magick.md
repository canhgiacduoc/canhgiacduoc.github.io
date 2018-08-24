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

Cài đặt magick package trên CRAN 


```r
#install.packages("magick")

library(magick)
library(dplyr)
dl_from_dropbox <- function(x, key) {
  require(RCurl)
  bin <- getBinaryURL(paste0("https://dl.dropboxusercontent.com/s/", key, "/", x),
                      ssl.verifypeer = FALSE)
  con <- file(x, open = "wb")
  writeBin(bin, con)
  close(con)
  message(noquote(paste(x, "read into", getwd())))                        
}

add_logo=function(pic){
  pic=pic %>% 
  
image_composite(image_read(drop_media('Blog/Figure/Canhgiacduoc_Icon.png')$link) %>%
                image_scale("40x"),
                offset = "+0+0" , operator = "blend", compose_args="50") %>% 
image_annotate("©canhgiacduoc", 
               color = "#69E0D8", 
               size = 8,
               location = paste0("+",((.) %>% image_info())$width-13*5,
                                 "+",((.) %>% image_info())$height-18 ))
  # image_write(doc)
  return(pic)
}
```




# Đọc và ghi ảnh



![example](https://dl.dropboxusercontent.com/apitl/1/AACmoGHeFuUaUKPTIPO5ChtgSBsh9gLBlhtYltAEw1IA61tB-Rg0Jlx_VB9N77JlvICq2Fy-rH2HPD6hZX7WyOgiiri8D8dW0nhgUVJxxx9c9a9byJeYUf9N3QYCNmmeQuDD6P8qV-oOZ-_4zd04X9CF7xl_Y4ynuvSv_E4JXr4YTJFEWU1tO-gjqdkXeSRw1x-tclz8wXPGbJ9qx_ZD_5gCv_2ffOb3QZ39Bv7b4kBGKNnkFYckRFGJLJkwPG1H_ygdIZHN3A-z5GPeB4EUps8B)
 
## Other example 


<figure>
	<a href="https://dl.dropboxusercontent.com/apitl/1/AACmoGHeFuUaUKPTIPO5ChtgSBsh9gLBlhtYltAEw1IA61tB-Rg0Jlx_VB9N77JlvICq2Fy-rH2HPD6hZX7WyOgiiri8D8dW0nhgUVJxxx9c9a9byJeYUf9N3QYCNmmeQuDD6P8qV-oOZ-_4zd04X9CF7xl_Y4ynuvSv_E4JXr4YTJFEWU1tO-gjqdkXeSRw1x-tclz8wXPGbJ9qx_ZD_5gCv_2ffOb3QZ39Bv7b4kBGKNnkFYckRFGJLJkwPG1H_ygdIZHN3A-z5GPeB4EUps8B"><img src="https://dl.dropboxusercontent.com/apitl/1/AACmoGHeFuUaUKPTIPO5ChtgSBsh9gLBlhtYltAEw1IA61tB-Rg0Jlx_VB9N77JlvICq2Fy-rH2HPD6hZX7WyOgiiri8D8dW0nhgUVJxxx9c9a9byJeYUf9N3QYCNmmeQuDD6P8qV-oOZ-_4zd04X9CF7xl_Y4ynuvSv_E4JXr4YTJFEWU1tO-gjqdkXeSRw1x-tclz8wXPGbJ9qx_ZD_5gCv_2ffOb3QZ39Bv7b4kBGKNnkFYckRFGJLJkwPG1H_ygdIZHN3A-z5GPeB4EUps8B" alt=""></a>
</figure>

## sdfasf
 
test 2

<figure>
	<a href="https://dl.dropboxusercontent.com/apitl/1/AACmoGHeFuUaUKPTIPO5ChtgSBsh9gLBlhtYltAEw1IA61tB-Rg0Jlx_VB9N77JlvICq2Fy-rH2HPD6hZX7WyOgiiri8D8dW0nhgUVJxxx9c9a9byJeYUf9N3QYCNmmeQuDD6P8qV-oOZ-_4zd04X9CF7xl_Y4ynuvSv_E4JXr4YTJFEWU1tO-gjqdkXeSRw1x-tclz8wXPGbJ9qx_ZD_5gCv_2ffOb3QZ39Bv7b4kBGKNnkFYckRFGJLJkwPG1H_ygdIZHN3A-z5GPeB4EUps8B"><img src="https://dl.dropboxusercontent.com/apitl/1/AACmoGHeFuUaUKPTIPO5ChtgSBsh9gLBlhtYltAEw1IA61tB-Rg0Jlx_VB9N77JlvICq2Fy-rH2HPD6hZX7WyOgiiri8D8dW0nhgUVJxxx9c9a9byJeYUf9N3QYCNmmeQuDD6P8qV-oOZ-_4zd04X9CF7xl_Y4ynuvSv_E4JXr4YTJFEWU1tO-gjqdkXeSRw1x-tclz8wXPGbJ9qx_ZD_5gCv_2ffOb3QZ39Bv7b4kBGKNnkFYckRFGJLJkwPG1H_ygdIZHN3A-z5GPeB4EUps8B" alt=""></a>
</figure>


.... to be continued!

                        
Status (On projet Aug 2018) 


---
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a> 

©Canhgiacduoc(2017)





