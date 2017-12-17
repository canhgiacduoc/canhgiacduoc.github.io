---
layout: post
title: "Thiết kế va quản lý biểu mẫu điện tử (form PDF fillable)"
modified: 2017-12-13
tags: [Reporting, Pharmacovigilance]
image:
  feature: abstract-3.jpg
  credit: nguyenkhacdung
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
---

Trong thực tế công việc, việc báo cáo thông qua 1 biểu mẫu PDF giúp tiết kiệm thời gian trình bày, gửi và xử lý cũng như quản lý dữ liệu sau này. Việc báo cáo ADR thông qua biểu mẫu in ra từ giấy có nhiều vấn đề (...) và thực thế trong cuộc cách mạng 3.0 thì vận dụng máy tính và internet phải được áp dụng triệt để để có thể bắt kịp với thế giới
Tại Pháp biểu mẫu báo cáo ADR đã chuyển từ file word sang PDF giúp cho việc in ấn, lưu trữ trở nên nhẹ nhàng và chuẩn mực hơn....

## Tại sao nên dùng form PDF - Ưu điểm và tính năng

- Trên nền tảng PDF các font chữ, kiểu chữ và giá trị được điền 1 cách __có kiểm soát__ 
-> nâng cao chất lượng dữ liệu và giúp việc báo cáo tốn ít thời gian và lưu trữ báo cáo trở nên dễ dàng và tiện lợi.

- Form thông thường có thể chuyển trực tiếp từ word sang PDF form thông qua Acrobat PDF Pro
- Chuyển PDF từ form thường có thể thêm Nút Submit đê có thể gửi file/nội dung tới 1 địa chỉ email xác định (hoặc nâng cao hơn tới 1 server xác định - tính năng này hiện chưa tìm hiểu nhưng possible) 
- Tất cả Form biểu mẫu nhận được có thể trích xuất ra được file excel (.csv) giúp tổng hợp được các trường thông tin đã điền __chỉ bằng 1 cú click__. Tính năng này khá là ưu  việt giúp cho phần quản lý dữ liệu thu nhận dễ dàng hơn, bớt được sai số của việc hậu quản lý và tiến tới automatic kiểm soát toàn bộ thông tin trong file PDF báo cáo và thông tin ADR, tiến tới trả lời câu hỏi thông tin thuốc, phản hồi tự động tức thì,....!!!! 
- Thiết kế biểu mẫu hoàn toàn có thể thực hiện qua trên nền tảng Latex (dĩ nhiên có thể dùng qua RMardown) thông qua gói lệnh `hyperref` 
- Nut Clear, Print, Submit được đặt trực tiếp trên file giúp báo cáo điền và gửi 1 cách __nhanh hơn__ so với điền trên word (với cùng nội dung tương tự) và vẫn đảm bảo thiết kế và toàn vẹn của form mẫu, thậm chí có thể chèn được chữ ký điện tử của chính người gửi, mã số code dành cho người gửi thường xuyên (kiểu kiểm soát giống như _khách hàng thân thiết_)
- Ngược trở lại từ file data có thể điền ngược trở lại vào form một cách tự động. Điều này nếu dữ liệu trùng lặp ko được kiểm soát chặt sẽ có thể dẫn tới tình trạng báo cáo sai, ẩu, thậm chí _bom thư báo cáo _. Để kiểm soát tốt hơn khi thói quen báo cáo trực tuyến tăng lên trong tương lai, việc thiết kế lại hệ thống là cần thiết nếu như muốn vận dụng các thành tựu của khoa học công nghệ trong thực hành công việc liên quan. 
- Hiện phiên bản xuất ra excel chưa làm việc tốt với tiếng việt có dấu (Acrobat PDF Pro X). Tuy nhiên tác giả đã có tìm hiểu về cách cách khác nhau để đưa ra được thông tin tiếng việt được điền trong form báo cáo thông qua XML. Thao tác cũng không quá phức tạp và tỉ lệ thành công đối với tiếng việt là 100% (tested) khi xuất các trường thông tin từ form điền với output là excel. 
- So sánh với báo cáo online thì cách báo cáo này giúp Dược sỹ có thể ghi nhận phản ứng theo từng bệnh nhân và update thông tin trong báo cáo chỉ cần trên 1 file duy nhất với thời gian không bị hạn chế (khí mới điền được 1 nửa báo cáo và thông tin vẫn được lưu lại cho tới khi điền đầy đủ và submit) 
- Việc điền báo cáo có thể trên smartphone (tested tính năng điền form với Acrobat Reader trên điện thoại, tính năng Submit trực tiếp hiện chưa hỗ trợ tới thời điểm này). Do đó, báo cáo có thể gửi email bằng smartphone và có thể đính kèm nhiều thông tin hữu ích khác (ảnh chụp mẫu thuốc nghi ngờ, bảng Kết quả xét nghiệm....) giúp cho tín hiệu cảnh giác dược thu được càng chính xác hơn.


## Conclusion 
Vậy, việc thiết kế form và cải tiến hình thức và quy trình theo hướng này tỏ ra có nhiều ưu điểm và rất có tiềm năng áp dụng trong thực tế ở Việt Nam (Pháp hiện đang áp dụng kiểu báo cáo này). 

Status (On projet Dec 2017) 


---
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a> 

©Canhgiacduoc(2017)


# <br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Blog Cảnh giác Dược</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://canhgiacduoc.github.io/" property="cc:attributionName" rel="cc:attributionURL">https://canhgiacduoc.github.io/</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.




