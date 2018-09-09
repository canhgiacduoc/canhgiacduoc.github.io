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
3. HTML
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
