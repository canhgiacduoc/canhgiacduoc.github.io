---
layout: post
title: "Sử dụng và tùy biến styling trong Văn bản: 1 vài kinh nghiệm với big project (luận văn, sách technican book...)"
modified: 2018-06-20
tags: [R,officer, Experience, HowIWriteMyThesis, BienTapSachLuanVan]
---

Trong bài này, các kỹ năng xử lý văn bản sẽ được tổng hợp dần dần trong quá trình xây dự văn bản dài (manuscript thesis hoặc xây dựng 1 cuốn sách lớn về kỹ thuật) 

# Mục đích 

  - Giảm thiểu hạn chế của Word MS mà vẫn tận dụng được những ưu điểm vượt trội (trực quan, tương tác, dễ vi xử lý..) của phần mềm này.
  - Do trong quá trình làm việc với file lớn, lỗi rất dễ xảy ra -> cần phải "chia để trị" nhằm giảm thiểu rủi ro và hiệu suất làm việc (giảm thời gian mở file, làm việc trên mây, dễ quản lý)
  - Khi kết nối file, tính năng trích dẫn zotero, caption vẫn được bảo tồn. các Style mà thuộc tính giống nhau thì sẽ được bảo tồn.

# Tùy biến Styles trong Words  

## Modify Styles advanced  
  - Phím tắt - Styling văn bản trong vòng 1 tích tắc
  - Copy Styles từ 1 file nguồn sang 1 file word khác hoặc đặt nó trong mặc định

## Sử dụng Macros (tương thích với Window tốt)  

  - Macros chạy khá tốt trên window, tuy nhiên trên Mac tính năng này còn nhiều hạn chế
  - Mục đích chính là xử lý thao tác được lặp lại, lưu lại thao tác và dùng phím tắt để chạy trong vòng 1 nốt nhạc
  - Khi áp dụng styling trên 1 nhóm văn bản cần dùng chung 1 định dạng, macros nên và cần áp dụng để xử lý hậu kỳ trước khi kết nối các văn bản Word rời rạc để tránh xung đột định dạng
  - Một số kỹ năng hữu dụng giúp xử lý hàng loạt __hình ảnh__ và __bảng__ (đã áp dụng thành công khi xuất ra từ file trên R-Markdown): lựa chọn tất cả các bảng trong 1 văn bản (để áp dụng styling cho bảng hàng loạt), chọn tất cả hình ảnh và resize (hiệu chỉnh) kích thước được ấn định
  
## Trích dẫn TLTK chuyên nghiệp bằng Zotero thay cho tính năng nghèo nàn sẵn có trên Word  

Vấn đề này sẽ nói trong 1 bài cụ thể  




## Caption table and figure  

Có nhiều video hướng dẫn chi tiết về vấn đề này trên youtube (Gõ "Caption table" trên Youtube là có 1 loạt bài chi tiết)

Ưu điểm: bảng và hình được cho 1 số sequence thứ tự theo vị trí của bảng/hình trong văn bản và số này được tự động sắp lại khi thêm hoặc thay đổi cấu trúc văn bản
Nhược điểm: Khi ghép nối phải refeshing lại và 1 vài trường hợp phải Indexing lại, Đặt caption theo chương mục nếu không based trên Heading Style thì nhiều trường hợp muốn thể hiện tên Chapter trên Caption hơi phức tạp.

## Indexing 


# Officer - gói lệnh xử lý Word MS trên nền tảng R 

Ứng dụng của lệnh trong gói này giúp hiểu sâu thêm về cấu trúc văn bản.
Giúp kết nối các văn bản Word mà không cần phải cài thêm phần mềm phụ trợ (JAVA) như cac gói lệnh khác
Ưu điểm: Nhanh, trực quan, dễ sử dụng, có thể chèn trực tiếp 1 ảnh/bảng biểu vào 1 vị trí xác định trong văn bản (cursor), Thêm được tính năng chèn hình với kích thước cho tùy biến; Chỉnh sửa hàng loạt và áp dụng vòng lặp, sử dụng giao thoa được với các Package khác để tận dụng sức mạnh của R.


Xem bài hướng dẫn chi tiết trên web...


---
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a> 

©Canhgiacduoc(2017)
