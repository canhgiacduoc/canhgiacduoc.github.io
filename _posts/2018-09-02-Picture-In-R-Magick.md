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

upload_get_link_image_dropbox=function(gg,name){
  library(ggplot2)
  library(magick)
  
  path.mac="~/OneDrive - univ-tlse3.fr/Documents-UPS/Stat/Blog CanhgiacDuoc/images/"
  
  ggsave(paste0(path.mac,name),
         gg
  )
  
  
  image_read(paste0(path.mac,name)) %>%
    add_logo_big() %>% 
    image_write(paste0(path.mac,name))
  
  drop_upload(paste0(path.mac,name),
              path = "Blog/Figure",mode = "overwrite")
  link.01= (drop_share(paste0("Blog/Figure/",name))$url ) %>% 
    stringr::str_replace("dl=0","raw=1")
  
  if (file.exists(paste0(path.mac,name))) file.remove(paste0(path.mac,name))
  
  return(link.01)
}
```




# Đọc và ghi ảnh






