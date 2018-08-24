---
layout: post
title: "Xử lý ảnh dùng R và gói lệnh Magick - P1: Cơ bản" "
modified: 2018-08-23
tags: [R,data visualisation]
image:
  feature: prescrire-pv.jpg
  credit: nguyenkhacdung
  creditlink: https://desdaughter.com/2013/05/08/petit-manuel-de-pharmacovigilance-et-pharmacologie-clinique-sur-les-effets-nocifs-des-medicaments/
# output: html_notebook
---

Thông thường R dùng rất phổ biến để phân tích và biểu diễn số liệu, tuy nhiên R có thể làm được rất nhiều thao tác xử lý ảnh và quan trong nhất là tính "reproductive" (lặp lại) đặc trưng khi dùng R. Thông qua các ví dụ về xử lý ảnh, R có thể thay thế hoàn hảo cho các phần mềm xử lý ảnh thông dùng ở một vài thao tác, tạo ảnh động và các thuật toán sâu hơn dựa trên database là dữ liệu ảnh.

# Giới thiệu chung và setup 

Cài đặt magick package trên CRAN 


```r
#install.packages("magick")

library(magick)
dl_from_dropbox <- function(x, key) {
  require(RCurl)
  bin <- getBinaryURL(paste0("https://dl.dropboxusercontent.com/s/", key, "/", x),
                      ssl.verifypeer = FALSE)
  con <- file(x, open = "wb")
  writeBin(bin, con)
  close(con)
  message(noquote(paste(x, "read into", getwd())))                        
}
```




# Đọc và ghi ảnh


```r
link="https://dl.dropboxusercontent.com/apitl/1/AACvzJBdR-9FYqSTcmYDIawzyDWiYfX2_zHg642uVoNUIzHCj8ru_zVFlmdXj8f-hYnWIMugkESclQeMx7EhJ-P14clBhs6BPwFE78pMdw5o6Ez4StkRn8_g-aUkluX404YtM_Yw_fsgBiOrubRlSXITOiOItUR1WtBCUDLVzQ-Axh4VYxkCIOTH4xQ_z5GxU1u1u4mUb6sQBRYWXECIXJrSMhlpbRhWmxMTG5cbm99VPRwvCRVt85NL8ygULaXOJM-pOufCh3OKmE9v-64aYFFg"

magick::image_read(link) %>% print()
```

```
##   format width height colorspace matte filesize density
## 1   JPEG   519    238       sRGB FALSE    71765   72x72
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)

![example](https://dl.dropboxusercontent.com/apitl/1/AACvzJBdR-9FYqSTcmYDIawzyDWiYfX2_zHg642uVoNUIzHCj8ru_zVFlmdXj8f-hYnWIMugkESclQeMx7EhJ-P14clBhs6BPwFE78pMdw5o6Ez4StkRn8_g-aUkluX404YtM_Yw_fsgBiOrubRlSXITOiOItUR1WtBCUDLVzQ-Axh4VYxkCIOTH4xQ_z5GxU1u1u4mUb6sQBRYWXECIXJrSMhlpbRhWmxMTG5cbm99VPRwvCRVt85NL8ygULaXOJM-pOufCh3OKmE9v-64aYFFg)
 
## Other example 


<figure>
	<a href=",https://dl.dropboxusercontent.com/apitl/1/AACvzJBdR-9FYqSTcmYDIawzyDWiYfX2_zHg642uVoNUIzHCj8ru_zVFlmdXj8f-hYnWIMugkESclQeMx7EhJ-P14clBhs6BPwFE78pMdw5o6Ez4StkRn8_g-aUkluX404YtM_Yw_fsgBiOrubRlSXITOiOItUR1WtBCUDLVzQ-Axh4VYxkCIOTH4xQ_z5GxU1u1u4mUb6sQBRYWXECIXJrSMhlpbRhWmxMTG5cbm99VPRwvCRVt85NL8ygULaXOJM-pOufCh3OKmE9v-64aYFFg,"><img src="',https://dl.dropboxusercontent.com/apitl/1/AACvzJBdR-9FYqSTcmYDIawzyDWiYfX2_zHg642uVoNUIzHCj8ru_zVFlmdXj8f-hYnWIMugkESclQeMx7EhJ-P14clBhs6BPwFE78pMdw5o6Ez4StkRn8_g-aUkluX404YtM_Yw_fsgBiOrubRlSXITOiOItUR1WtBCUDLVzQ-Axh4VYxkCIOTH4xQ_z5GxU1u1u4mUb6sQBRYWXECIXJrSMhlpbRhWmxMTG5cbm99VPRwvCRVt85NL8ygULaXOJM-pOufCh3OKmE9v-64aYFFg," alt=""></a>
</figure>

## sdfasf

<figure>
	<a href="http://farm9.staticflickr.com/8426/7758832526_cc8f681e48_b.jpg"><img src="http://farm9.staticflickr.com/8426/7758832526_cc8f681e48_c.jpg" alt=""></a>
	<figcaption><a href="http://www.flickr.com/photos/80901381@N04/7758832526/" title="Morning Fog Emerging From Trees by A Guy Taking Pictures, on Flickr">Morning Fog Emerging From Trees by A Guy Taking Pictures, on Flickr</a>.</figcaption>
</figure>

.... to be continued!

                        
Status (On projet Aug 2018) 


---
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a> 

©Canhgiacduoc(2017)





