---
layout: post
title: "Giới thiệu về công cụ Text-Concordencing trong đăng báo quốc tế-ví dụ với phần mềm mã nguồn mở và free AntConc"
description: "Thực hành viết bài báo dựa trên phân tích và mô phỏng theo corpus của bài viết- tìm hiểu bối cảnh và cách sử dụng thuật ngữ khoa học trong chuyên ngành/vấn đề cụ thể "
tags: [publication, datamining, text-mining]
modified: 2017-11-28
image:
  feature: antconc1.png
  credit: KevinNGUYEN
  
---

Text concordencing là 1 công cụ trợ giúp nhà nghiên cứu trong việc phát triển ngôn ngữ chuyên ngành, cách dùng chính xác và giúp tăng hiệu quả đăng báo quốc tế. Đây là công cụ được nhắc tới trong cuốn sách nổi tiếng trong lĩnh vực viết bài báo khoa học :
> Writing Scientific Research Articles: Strategy and Steps, 2nd Edition. Author: Margaret Cargill, Patrick O'Connor. [Link](http://eu.wiley.com/WileyCDA/WileyTitle/productCd-1118570707.html).

Bài viết này mô tả ngắn gọn các sử dụng phân tích concordance và collocation đối với **Corpus** (corpus khó tìm được nghĩa tương đương trong tiếng việt, nôm na là chỉ mục đích chỉ phần nội dung ngữ nghĩa của 1 văn bản/hệ thống văn bản)

> Thực tế có rất nhiều phần mềm miễn phí và trả phí được phát triển nhưng đây là phần mềm đầu tiên mà tôi tiếp cận 1 cách có hệ thống để ứng dụng để viết ra 1 bài báo cụ thể trong 1 chủ đề/lĩnh vực cụ thể. Việc vận dụng 1 cách sáng tạo và kết hợp với công cụ thống kê R giúp ích cho việc thực hiện các vấn đề về datamining và text mining hoàn thiện hơn. _Author: KevinNGUYEN_

## Tải và cài đặt

Phần mền nhỏ gọn và automatic chạy thôi. Có nhiều phiên bản cho các hệ điều hành Win, Mac Linux. Trong bài này tôi giới thiệu về phiên bản AntConc 3.4.4 chạy trên Win (tác giả Laurence Anthony)[^1]
[Link](http://www.laurenceanthony.net/software/antconc/)

## Hướng dẫn phân tích và hiển thị đối với các thuật ngữ được nêu trong văn bản nhất định

- Tác giả đã có 1 searie video trên Youtub hướng dẫn cụ thể về cách sử dụng chi tiết phần mềm cũng như file mô tả rất đầy đủ về phần mềm này. bạn nào muốn tìm hiểu kỹ thêm xin tham khảo trực tiếp:  
  * [Youtub chanel](https://www.youtube.com/watch?v=O3ukHC3fyuc&list=PLiRIDpYmiC0Ta0-Hdvc1D7hG6dmiS_TZj)
  * [PDF manual](http://www.laurenceanthony.net/publications.html#books)  

- Chú ý: file đầu vào phải là .txt
- Có thể dùng công cụ chuyển đổi file PDF thành text thông qua các cách như sau:
  * Chọn text trực tiếp trên file và lưu thủ công trong 1 file mới .txt trưc tiếp nội dung phần chữ của bài báo/nội dung cần để phân tích
  * Dùng công cụ phần mềm chuyển đôi file PDF thành Text: Adobe Acrobat Pro,...
  * Dùng tiện ích online (tiện nhất nhưng chưa có đánh giá về tính bảo mật và phụ thuộc chính sách của website cung cấp dịch vụ này) : trong bài này tôi dùng [pdftotext](http://pdftotext.com/vi/) vì nó có tính năng chuyển đổi cùng lúc 20 file và tải về trong 1 lần duy nhất, các nội dung không bị "lệch pha"" (tức là bài báo có 2 cột thì biên dịch sang text chưa thấy bị lỗi biên dịch nhầm sang ngang). Tiện ích này trích xuất text trong file nên bảng biểu sẽ biến mất, chỉ có đơn thuần chữ trong văn bản.

## Giới thiệu về  concordance:
- Các kiểu tìm kiếm :đơn giản-chữ hoa+thường - cú pháp phức tạp (nâng cao)
- Sort : Giúp tăng nhận biết vấn đề thông qua hiện thị màu khá phù hợp với mục đích là chọn từ vựng-bối cảnh hay collocation.

![example]({{ site.url }}/images/antconc1.png)

## Sao lưu các lần tìm kiếm- kinh nghiệm ứng dụng trong trường hợp cụ thể với 1 chủ đề  

- Phần mềm này cũng hỗ trợ sao lưu các kết quả tìm kiếm: Việc này giúp phát triển ngô ngữ/thuật ngữ chuyên ngành và giúp phát triển được rất nhiều bối cảnh sử dụng
- Hệ thống Phím tắt trong phần mềm khá phong phú : ví dụ: Ctrl+S lưu kết quả trực tiếp thành 1 file txt ; ALT+A : chọn tất cả văn bản trong concordance
- Sử dụng phân tích cả 1 thư mục thông qua Ctrl+D (thực hành rất nhiều)

.. còn rất nhiều các bạn có thể tự khám phá và ứng dụng nhé.


[^1]: Anthony, L. (2014). AntConc (Version 3.4.4) [Computer Software]. Tokyo, Japan: Waseda University. Available from http://www.laurenceanthony.net/

---

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a>