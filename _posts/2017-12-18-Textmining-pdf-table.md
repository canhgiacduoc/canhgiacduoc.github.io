---
layout: post
title: "Advanced Textmining: Trích xuất dữ liệu từ bảng cố định từ file PDF "
modified: 2017-12-13
tags: [Pharmacovigilance,datamining, Research]
image:
  feature: abstract-3.jpg
  credit: nguyenkhacdung
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/

---

Trong bài này, 1 phương pháp dùng R sẽ được đề cập tới để có thể trích xuất toàn bộ bảng trong file PDF (ví dụ là file PDF của phần mềm quản lý dữ liệu cảnh giác dược của Pháp) sang định dạng có thể dùng trực tiếp cho thống kê và phân tích. Thực ra vấn đề này vẫn chưa được giải quyết trọn vẹn nếu chỉ dùng mỗi R hay các phần mềm tương đương. Tác giả đã thử dùng rất nhiều gói lệnh package (ví dụ...) để tìm cách tiếp cận trực tiếp dữ liệu từ file PDF gốc.
Tại sao lại kỳ công như vậy? Nội dung dưới đây sẽ nêu bật ý nghĩa của việc textmining trong môi trường PDF.

## Context  

Tại sao textmining trên nền tảng PDF cần phải được chú ý khai thác? 
PDF là định dạng khá phổ biến, ưu điểm thì không phải bàn cái (tài liệu điện tử, không thể thay đổi định dạng nội dung, font chữ được tích hợp, ứng dụng đa nền tảng-tương tác,...). Một điều đáng chú ý là đa số các bài báo quốc tế đều dùng định dạng này(-> Triển vọng text mining trong corpus: vấn đề sẽ nếu rõ trong các bài và ý tưởng tiếp theo).


## Các câu lệnh được dùng 

Example 

|AER Number      |Patient     |Suspect products |Concomitant products |Reactions                          |
|:---------------|:-----------|:----------------|:--------------------|:----------------------------------|
|201308_00023559 |Sex : F     |Bactrim Forte    |NIFLURIL (UNK        |Nécrolyse épidermique toxique(1004 |
|NA              |Age :6 Y    |NA               |INGREDIENTS)         |10044223))                         |
|NA              |NA          |NA               |NA                   |Outcome : recovered/               |
|NA              |NA          |NA               |NA                   |SER :Serious                       |
|NA              |NA          |NA               |NA                   |Change in dose : Not applic        |
|201312_00025546 |Sex : F     |Zelboraf         |Non rapporté         |Nécrolyse épidermique toxique(1004 |
|NA              |Age :75 Y   |NA               |NA                   |10044223))                         |
|NA              |NA          |NA               |NA                   |Outcome : recovered/               |
|NA              |NA          |NA               |NA                   |SER :Serious                       |
|NA              |NA          |NA               |NA                   |Change in dose : stopped           |
|201403_00027065 |Sex : M     |Vectibix         |Non rapporté         |Syndrome de Stevens-Johnson(100420 |
|NA              |NA          |NA               |NA                   |042033))                           |
|NA              |NA          |NA               |NA                   |Outcome : Unknown                  |
|NA              |NA          |NA               |NA                   |SER :Serious                       |
|NA              |NA          |NA               |NA                   |Change in dose : Unknown           |
|NA              |NA          |NA               |NA                   |Diabète(10012601))                 |
|NA              |NA          |NA               |NA                   |Outcome : Unknown                  |
|NA              |NA          |NA               |NA                   |SER :Serious                       |
|NA              |NA          |NA               |NA                   |Change in dose : Unknown           |
|NA              |NA          |NA               |NA                   |Psoriasis(10037153))               |
|NA              |NA          |NA               |NA                   |Outcome : Unknown                  |
|NA              |NA          |NA               |NA                   |SER :Not Serious                   |
|NA              |NA          |NA               |NA                   |Change in dose : Unknown           |
|201404_00027143 |Sex : M     |Zelboraf         |DAFALGAN             |Nécrolyse épidermique toxique(1004 |
|NA              |Prot # :    |NA               |PRIMPERAN            |10044223))                         |
|NA              |NIP-FR-2146 |NA               |SPASFON (FRANCE)     |Outcome : recovered/               |
|NA              |NA          |NA               |TOPALGIC (FRANCE)    |SER :Serious                       |
|NA              |NA          |NA               |NA                   |Change in dose : stopped           |
|NA              |NA          |NA               |NA                   |Fatigue(10016256))                 |
|NA              |NA          |NA               |NA                   |Outcome : not recove               |
|NA              |NA          |NA               |NA                   |SER :Serious                       |
|NA              |NA          |NA               |NA                   |Change in dose : stopped           |
|NA              |NA          |NA               |NA                   |Nausée(10028813))                  |
|NA              |NA          |NA               |NA                   |Outcome : recovering               |
|NA              |NA          |NA               |NA                   |SER :Not Serious                   |
|NA              |NA          |NA               |NA                   |Change in dose : stopped           |
|201404_00027493 |Sex : F     |Lamictal         |Non rapporté         |Nécrolyse épidermique toxique(1004 |
|NA              |NA          |NA               |NA                   |10044223))                         |
|NA              |NA          |NA               |NA                   |Outcome : recovered/               |
|NA              |NA          |NA               |NA                   |Change in dose : stopped           |
|NA              |NA          |NA               |NA                   |Céphalée(10019211))                |
|NA              |NA          |NA               |NA                   |Outcome : Unknown                  |
|NA              |NA          |NA               |NA                   |Change in dose : stopped           |

> How? 

Đặc điểm file PDF là trang đầu tiên là thông tin bên lề không liên quan tới nội dung. 
Đã dùng Acrobat Pro X chuyển đổi sang excel nhưng kết quả không như mong muốn.
Cuối cùng tình cờ phát hiện trang web chuyển đổi trực tuyến [PDF to excel](http://pdftoxls.com/) tuyệt vời và __FREE__ giúp chuyển nhanh trong và gần như (98%) là dữ liệu được đặt đúng chỗ của nó (mặc du NA xuất hiện khá nhiều - nhưng có thể xử lý bằng trực tiếp excel bằng các lệnh trên R)

Code Sharing :

{% highlight r %}
readxl::read_excel("C:/Users/utilisateur/OneDrive - univ-tlse3.fr/Documents-UPS/Stat/SCAR20102015-PDS/SJS TEN1415Fr 2.xlsx",
                        skip = 6, # bỏ qua 6 dòng đầu tiên, dữ liệu từ file chuyển sẽ biên dịch từ dòng thứ 7 trở đi - cái mà ta muốn
                        sheet = 2) # sheet 1 bỏ qua vì toàn thông tin hành chính, có thể dùng lệnh lặp để kết nốt tất cả các sheet thành 1 file dat duy nhất
{% endhighlight %}


                        
.... to be continued!

                        
Status (On projet Dec 2017) 


---
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a> 

©Canhgiacduoc(2017)





