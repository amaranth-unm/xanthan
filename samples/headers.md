---
title: Image Examples
layout: base
date: 2024-10-24
header-image: /assets/images/backgrounds/pano-1.jpg 
---

# Page Headers
It's common to include a large image at the top of the page. This is built into Xanthan pages, if you want to use it.

In the page metadata, include something like `header-image: images/image_name.jpg`.




## Section Header Images
We've already seen the the jumbotron image that you can use as a section divider. 

You can also add a title and subtitle to make more of a section header.

{% include jumbotron.html
  height="30vh"
  image-path="/assets/images/backgrounds/pano-1.jpg"
  title="Section Heading"
  subtitle="Your subtitle goes here"
%}


##  Peekaboo Headers
You may have noticed that the last section heading was "fixed" to the scrolling page and scrolled past out of view with the text. 

We can set also the create the effect of the header revealing parts of a larger image as is happening below (also with or without a section heading):

{% include scrollybox/bg.html
  height="40vh"
  image-path="/assets/images/backgrounds/pano-1.jpg"
  title="Section Heading"
%}



## That's a wrap 
That's all for basic headers. 

Sed vel quam nec nunc ornare vestibulum. Donec placerat, ipsum vel dignissim convallis, enim lorem pharetra est, id eleifend mauris magna commodo ligula. Sed et pharetra quam. Nullam imperdiet nisl vitae sapien vehicula, eu faucibus lectus semper. Proin nec sollicitudin orci. Vivamus sit amet nulla posuere, rutrum libero eget, porta mi. Duis gravida nisl mollis ligula tempor, vitae sodales turpis pretium. In auctor enim non mauris ornare, nec suscipit ligula venenatis.

