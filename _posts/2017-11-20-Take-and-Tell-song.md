---
layout: post
title: "Take and Tell Vide -Bài học từ WHO-UMC truyền thông"
description: "Take and tell - Pharmacovigilance"
tags: [pharmacovigilance, video]
---
Đây là bài hát truyền tới cộng đồng về các lợi ích và nhận thức về việc cần phải thông báo tói bác sỹ/dược sỹ khi dùng thuốc gặp phải 1 tác dụng có hại/không mong muốn.
<iframe width="560" height="315" src="//www.youtube.com/watch?v=dkvaYzaZ_Uk" frameborder="0"> </iframe>

Đây là nội dung mà WHO UMC muốn truyền đạt:  [Take&Tell](https://www.who-umc.org/safer-use-of-medicines/taketell/).

Not sure if this only effects Kramdown or if it's an issue with Markdown in general. But adding YouTube video embeds causes errors when building your Jekyll site. To fix add a space between the `<iframe>` tags and remove `allowfullscreen`. Example below:

{% highlight html %}
<iframe width="560" height="315" src="//www.youtube.com/watch?v=dkvaYzaZ_Uk" frameborder="0"> </iframe>
{% endhighlight %}
