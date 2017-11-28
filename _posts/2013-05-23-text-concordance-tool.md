---
layout: post
title: "Giới thiệu về công cụ Text-concordencing - tìm hiểu bối cảnh và cách sử dụng thuật ngữ khoa học trong chuyên ngành/vấn đề cụ thể - ví dụ với phần mềm mã nguồn mở và free AntConc"
description: "Thực hành viết bài báo dựa trên phân tích và mô phỏng theo corpus của bài viết"
tags: [publication, datamining, text-mining]
modified: 2017-11-28
image:
  feature: antconc1.png
  credit: KevinNGUYEN
  
---

Text concordencing là 1 công cụ trợ giúp nhà nghiên cứu trong việc phát triển ngôn ngữ chuyên ngành, cách dùng chính xác và giúp tăng hiệu quả đăng báo quốc tế. Đây là công cụ được nhắc tới trong cuốn sách nổi tiếng trong lĩnh vực viết bài báo khoa học :
> Writing Scientific Research Articles: Strategy and Steps, 2nd Edition. Author: Margaret Cargill, Patrick O'Connor. [Link](http://eu.wiley.com/WileyCDA/WileyTitle/productCd-1118570707.html).

Bài viết này mô tả ngắn gọn các sử dụng phân tích concordance và collocation đối với **Corpus** (corpus khó tìm được nghĩa tương đương trong tiếng việt, nôm na là chỉ mục đích chỉ phần nội dung ngữ nghĩa của 1 văn bản/hệ thống văn bản)

## Tải và cài đặt

Phần mền nhỏ gọn và automatic chạy thôi. Có nhiều phiên bản cho các hệ điều hành Win, Mac Linux. Trong bài này tôi giới thiệu về phiên bản AntConc 3.4.4 chạy trên Win (tác giả Laurence Anthony)[^1]
[Link](http://www.laurenceanthony.net/software/antconc/)

## Hướng dẫn phân tích và hiển thị đối với các thuật ngữ được nêu trong văn bản nhất định



----
[^1]: Anthony, L. (2014). AntConc (Version 3.4.4) [Computer Software]. Tokyo, Japan: Waseda University. Available from http://www.laurenceanthony.net/