---
layout: post
title: Sample Post
description: "Just about everything you'll need to style in the theme: headings, paragraphs, blockquotes, tables, code blocks, and more."
modified: 2014-12-24
tags: [sample post, blog]
image:
  feature: abstract-3.jpg
  credit: dargadgetz
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
comments: true
link: http://nguyenkhacdung.github.io  
---
Dưới đây là toàn bộ styling dùng trong .md để post trong theme của blog:


# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

### Body text

Kiểu chữ đậm :  **đây là kiểu đậm**. Kiểu chữ nghiêng : _nghiêng_.

Chèn ảnh vào post:

![Smithsonian Image]({{ site.url }}/images/3953273590_704e3899d5_m.jpg)
{: .image-right}


 Water is H<sub>2</sub>O. 
 The New York Times <cite>(That’s a citation)</cite>. <u>Underline</u>. 
 
HTML and <abbr title="cascading stylesheets">CSS<abbr> are our tools. 


### Trích dẫn Blockquotes

> Failling to plan is planning to fail !

## Các kiểu danh sách List 

### List Thứ tự

1. Item one
   1. sub item one
   2. sub item two
   3. sub item three
2. Item two

### List không theo Thứ tự
* Item one
* Item two
* Item three

## Bảng và canh lề

| Tiêu đề 1 | Tiêu đề 2 | Tiêu đề 3 |
|:--------|:-------:|--------:|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|----
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|=====
| Foot1   | Foot2   | Foot3
{: rules="groups"}

## Tùy biến kiểu Code với tông màu 

Thêm màu cho cú pháp thông qua __Pygments__

  * Ví dụ : 
{% highlight css %}
#container {
  float: left;
  margin: 0 -240px 0 0;
  width: 100%;
}
{% endhighlight %}

  * Nếu không có Pygment thì sẽ không có màu và đơn điệu: 

    <div id="awesome">
        <p>This is great isn't it?</p>
    </div>


>Syntax highlighting is a feature that displays source code, in different colors and fonts according to the category of terms. This feature facilitates writing in a structured language such as a programming language or a markup language as both structures and syntax errors are visually distinct. Highlighting does not affect the meaning of the text itself; it is intended only for human readers.[^1]

[^1]: <http://en.wikipedia.org/wiki/Syntax_highlighting>


Để thay đổi cấu trúc highlighting, phải sửa đổi trên file `/_sass/_pygments.scss`


## Phân chia code và các nội dung khác thông qua cấu trúc Fenced Code Blocks

Ví dụ :
1. R
~~~ r
image_read("https://jeroen.github.io/images/frink.png") %>%
  image_rotate(270) %>%
  image_background("blue", flatten = TRUE) %>%
  image_border("red", "10x10") %>%
  image_annotate("The same thing with pipes", color = "white", size = 30)
~~~

2. CSS
~~~ css
#container {
    float: left;
    margin: 0 -240px 0 0;
    width: 100%;
}
~~~

__HTML__   

~~~ html
{% raw %}<nav class="pagination" role="navigation">
    {% if page.previous %}
        <a href="{{ site.url }}{{ page.previous.url }}" class="btn" title="{{ page.previous.title }}">Previous article</a>
    {% endif %}
    {% if page.next %}
        <a href="{{ site.url }}{{ page.next.url }}" class="btn" title="{{ page.next.title }}">Next article</a>
    {% endif %}
</nav><!-- /.pagination -->{% endraw %}
~~~

>To modify styling and highlight colors edit `/_sass/_coderay.scss`. Line numbers and a few other things can be modified in `_config.yml`. Consult [Jekyll's documentation](http://jekyllrb.com/docs/configuration/) for more information.

3. yaml  

{% highlight yaml %}
image:
  background: filename.png
{% endhighlight %}

>If you want to set a background image for the entire site just add `background: filename.png` to your `_config.yml` and BOOM --- background images on every page!


## Thêm link vào tiêu đề post 


Chỉ cần thêm `link: http://url-you-want-linked` ở mục YAML của post -> thế là OK (hữu dụng khi tạo link sang file html khác )


## Thay đổi ảnh nền 

Thêm tùy biến background trong YAML của post 
{% highlight yaml %}
image:
  background: filename.png
{% endhighlight %}

Chú ý ảnh nền phải được đặt trong thư mục `/images` nếu dùng trực tiếp image nằm trong site, tuy nhiên có thể thêm link trực tiếp từ bên ngoài thông qua full URL.

>If you want to set a background image for the entire site just add _background: filename.png_ to your __config.yml_ and BOOM --- background images on every page!


## Thêm các nút để liên kết với link ngoài (Buttons)

Sử dụng lớp  `.btn` trong quá trình chèn link.
Ví dụ: 

{% highlight html %}
<a href="#" class="btn btn-success">Success Button</a>
{% endhighlight %}

<div markdown="0"><a href="#" class="btn">Primary Button</a></div>
<div markdown="0"><a href="#" class="btn btn-success">Success Button</a></div>
<div markdown="0"><a href="#" class="btn btn-warning">Warning Button</a></div>
<div markdown="0"><a href="#" class="btn btn-danger">Danger Button</a></div>
<div markdown="0"><a href="#" class="btn btn-info">Info Button</a></div>

## Video post

<iframe width="560" height="315" src="//www.youtube.com/embed/SU3kYxJmWuQ" frameborder="0"> </iframe>


>Not sure if this only effects Kramdown or if it's an issue with Markdown in general. But adding YouTube video embeds causes errors when building your Jekyll site. To fix add a space between the `<iframe>` tags and remove `allowfullscreen`. 

Ví dụ:

{% highlight html %}
<iframe width="560" height="315" src="//www.youtube.com/embed/SU3kYxJmWuQ" frameborder="0"> </iframe>
{% endhighlight %}

## Hình ảnh 

### 1 hình 

<figure>
	<a href="http://farm9.staticflickr.com/8426/7758832526_cc8f681e48_b.jpg"><img src="http://farm9.staticflickr.com/8426/7758832526_cc8f681e48_c.jpg" alt=""></a>
	<figcaption><a href="http://www.flickr.com/photos/80901381@N04/7758832526/" title="Morning Fog Emerging From Trees by A Guy Taking Pictures, on Flickr">Morning Fog Emerging From Trees by A Guy Taking Pictures, on Flickr</a>.</figcaption>
</figure>

### 2 hình

Dùng `half` class để hiện thị 2 hình ảnh chung 1 tên hình (caption)

{% highlight html %}
<figure class="half">
	<img src="/images/image-filename-1.jpg" alt="">
	<img src="/images/image-filename-2.jpg" alt="">
	<figcaption>Caption describing these two images.</figcaption>
</figure>
{% endhighlight %}

<figure class="half">
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<img src="http://placehold.it/600x300.jpg" alt="">
	<img src="http://placehold.it/600x300.jpg" alt="">
	<figcaption>Two images.</figcaption>
</figure>

Rồi 3 hình ...

{% highlight html %}
<figure class="third">
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<figcaption>Caption describing these three images.</figcaption>
</figure>
{% endhighlight %}

<figure class="third">
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<a href="http://placehold.it/1200x600.jpg"><img src="http://placehold.it/600x300.jpg" alt=""></a>
	<figcaption>Three images.</figcaption>
</figure>