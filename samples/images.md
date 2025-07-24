---
title: Image Examples
layout: base
date: 2024-10-24
---

{% include jumbotron.html
  height="60"
  image-url="/assets/bg-images/pano-1.jpg"
  title="Image Examples"
%}

We use a small include file called `figure.html` to help format our images consistently across different pages. You can copy and paste this code and put it anywhere you want an image. The gray box below shows the code you can use, and the rest of the page provides further examples and a few other image tools, like an image carousel and a before/after slider for comparing two images.

 A few formatting options for basic images:
- class: `img-left`,  `img-center`, `img-right`
- width: specify a value for the width, usually as a percent of the page with
- caption: self-explanatory
- image-url: a path to your image
  - Your path will often look like `images/filename.jpg`. This is a "relative" path because the image location is RELATIVE to the page on which you're trying to load the image.
  - You can also use an ABSOLUTE path to your image, which means the path starts with a `/` and begins from the root folder of your website. 

```
{%raw%}
{% include figure.html
  class="img-right"
  width="60%"
  caption="What a nice view"
  image-url="/assets/bg-images/hike-1.jpg"
%}
{%endraw%}
```



## Inline Images
It's easy to place images in your story, ones are "fixed" to the page and move along with the text.

{% include figure.html
  class="img-right"
  width="60%"
  caption="What a nice view"
  image-url="/assets/bg-images/hike-1.jpg"
%}

### You can have them off to the right.

Etiam finibus risus et sagittis suscipit. Praesent id nisi metus. Vivamus odio ligula, iaculis vestibulum convallis id, vehicula at justo. Sed vestibulum elit at ante pellentesque pretium. Vestibulum euismod tempus sem sit amet scelerisque. Curabitur hendrerit fermentum rutrum. Nam suscipit dictum purus, non rhoncus dui sodales nec. Etiam convallis arcu metus, ut cursus risus porttitor sit amet. Duis ut sapien varius libero efficitur vehicula. Sed id massa id elit ullamcorper feugiat. In hac habitasse platea dictumst.

In hac habitasse platea dictumst. Sed ultrices venenatis nunc et eleifend. Praesent sapien enim, porta egestas tortor vitae, imperdiet mollis velit. Cras quis quam lacus. Cras ac felis sed nunc bibendum rutrum vitae at massa. Mauris id vestibulum dolor. Vivamus iaculis sollicitudin purus sit amet gravida. Aliquam erat diam, pretium eget urna at, pretium bibendum nunc. Nullam finibus aliquet diam, in ullamcorper odio vulputate tincidunt. Nam mauris felis, feugiat porta molestie ac, eleifend id quam. Suspendisse varius erat odio, et fermentum libero elementum sit amet. Morbi maximus justo fringilla facilisis tincidunt. Curabitur pretium nulla mauris, vel condimentum leo malesuada non. Cras purus erat, malesuada suscipit tempor sit amet, rhoncus et sapien. Fusce at blandit urna.


{% include figure.html
  class="img-left"
  width="30%"
  caption="What a nice view, again"
  image-url="/assets/bg-images/hike-1.jpg"
%}

### You can have them off to the left. You can control the width.

Etiam finibus risus et sagittis suscipit. Praesent id nisi metus. Vivamus odio ligula, iaculis vestibulum convallis id, vehicula at justo. Sed vestibulum elit at ante pellentesque pretium. Vestibulum euismod tempus sem sit amet scelerisque. Curabitur hendrerit fermentum rutrum. Nam suscipit dictum purus, non rhoncus dui sodales nec. Etiam convallis arcu metus, ut cursus risus porttitor sit amet. Duis ut sapien varius libero efficitur vehicula. Sed id massa id elit ullamcorper feugiat. In hac habitasse platea dictumst.

In hac habitasse platea dictumst. Sed ultrices venenatis nunc et eleifend. Praesent sapien enim, porta egestas tortor vitae, imperdiet mollis velit. Cras quis quam lacus. Cras ac felis sed nunc bibendum rutrum vitae at massa. Mauris id vestibulum dolor. Vivamus iaculis sollicitudin purus sit amet gravida. Aliquam erat diam, pretium eget urna at, pretium bibendum nunc. Nullam finibus aliquet diam, in ullamcorper odio vulputate tincidunt. Nam mauris felis, feugiat porta molestie ac, eleifend id quam. Suspendisse varius erat odio, et fermentum libero elementum sit amet. Morbi maximus justo fringilla facilisis tincidunt. Curabitur pretium nulla mauris, vel condimentum leo malesuada non. Cras purus erat, malesuada suscipit tempor sit amet, rhoncus et sapien. Fusce at blandit urna.


### Side by side
To achieve two images side by side use, make sure the width for each is 48%. (It's less than 50% to make room for margins.)

{% include figure.html class="img-left" width="48%" abs-image-url="/assets/images/default.jpg" caption="Here's an image on the left."%}

{% include figure.html class="img-left" width="48%" abs-image-url="/assets/images/default.jpg" caption="Here's an image on the right."%}

<p style="clear:both"></p>


{%raw%}
```
{% include figure.html
class="img-left"
width="48%"
caption="Here's an image on the left."
image-url="/assets/images/default.jpg"
%}

{% include figure.html
class="img-left"
width="48%"
caption="Here's an image on the right."
image-url="/assets/images/default.jpg"
%}
```
{%endraw%}


### Full-width
Of course you can have the image take 100% of the page container, but make sure you're image is large enough to look nice. Unlike the below example.

{% include figure.html class="img-center" width="100%" caption="Make sure your image is large enough to be 100% width or it will look grainy. See above."  abs-image-url="/assets/images/default.jpg" %}


{%raw%}
```
{% include figure.html
  class="img-center"
  width="100%"
  caption="Make sure your image is large enough to be 100% width or it will look grainy. See above."
  image-url="images/default.jpg" %}
```
{%endraw%}



## Jumbotron Images
You'll notice that even a "full-width" image is still bound by our page margins. But sometimes you just need to turn things up to 11. 

In that case, go jumbo! You can make an image be the whole width of the browser window, and control the height of the image for whatever effect you need. Set the `height` parameter to be the % of the browser height. (So, 100 will take up the browser winder, however big or small that is.)

{% include jumbotron.html
  height="50"
  image-url="/assets/images/default.jpg"
  title=""
%}

```
{%raw%}{% include jumbotron.html
  height="50"
  image-url="images/default.jpg"
  title=""
%}{%endraw%}
```


## Juxtapose
It's easy to set up a slider to compare historic and contemporary photos. If you find a historic image from a vantage point that you can replicate, please take a modern photo so we can better illustrate the changes in the surrounding space. Obviously the effect is more striking the closer the images line up.


{% include juxtapose.html
image1="/essays/mesa-vista-hall/images/mvh-tv-room.jpg"
image2="/essays/mesa-vista-hall/images/mvh-hist-common-room.jpg"
caption="From the TV room to the Chair room (actually, the History Department Common Room). With a less good view of the mountains."
%}


```
{%raw%}{% include juxtapose.html
image1="/essays/mesa-vista-hall/images/mvh-tv-room.jpg"
image2="/essays/mesa-vista-hall/images/mvh-hist-common-room.jpg"
caption="These sliders are way more effective the more closely you line up the before and after images."
%}{%endraw%}
```



## Carousel
Do you have some cool images unsure how to integrate in your essay? Use a slide carousel! There are several little bits of code to include:
- provide image names
- provide image titles
- provide image captions
- actually display the carousel

If you don't want headers or captions (you can have one and not the other), just omit them from the list.

You can use `width` and `class` like figures to size and position your carousel. 


{% 
assign images = 
"/essays/mesa-vista-hall/images/mvh-construction.jpg,
/essays/mesa-vista-hall/images/mvh-room-cost.jpg,
/essays/mesa-vista-hall/images/mvh-tv-room.jpg" | split: ','
%}

{% 
assign headers = 
"A Photo Title,,
No caption here" | split: ','
%}

{%
assign captions = 
"It's useful to have informative captions|
This image has a caption, but no title|
" | split: '|'
%}



{% include carousel.html
width = "60%"
class = "right"
images = images
headers = headers
captions = captions 
%}


<p style="clear:both"></p>


The following code generates the slide deck above. Be sure to just copy and paste and edit carefully.

```
{%raw%}{% 
assign images = 
"/essays/mesa-vista-hall/images/mvh-construction.jpg,
/essays/mesa-vista-hall/images/mvh-room-cost.jpg,
/essays/mesa-vista-hall/images/mvh-tv-room.jpg" | split: ','
%}

{% 
assign headers = 
"A Photo Title,,
No caption here" | split: ','
%}

{%
assign captions = 
"It's useful to have informative captions|
This image has a caption, but no title|
" | split: '|'
%}

{% include carousel.html
width = "60%"
class = "right"
images = images
headers = headers
captions = captions 
%}{%endraw%}
```







## Section Header Images
We've already seen the the jumbotron image that you can use as a section divider. 

You can also add a title and subtitle to make more of a section header.

{% include jumbotron.html
  height="30"
  image-url="/assets/bg-images/pano-1.jpg"
  title="Section Heading"
  subtitle="Your subtitle goes here"
%}


##  Peekaboo Headers
You may have noticed that the last section heading was "fixed" to the scrolling page and scrolled past out of view with the text. 

We can set also the create the effect of the header revealing parts of a larger image as is happening below (also with or without a section heading):

{% include scrollybox/bg.html
  height="40"
  image-url="/assets/bg-images/pano-1.jpg"
  title="Section Heading"
%}



## That's a wrap 
That's all for basic images. We can also do [background scrollboxes](bg-scrollbox), [background switching](bg-switch), and [side scrolling](side-scroll).

Lorem ipsum dolor sit amet, consectetur adipiscing elit. In egestas augue sed malesuada ornare. Aliquam dignissim at est vel sagittis. Curabitur ornare nec nulla in mollis. Phasellus in lacinia mi. Vivamus vel odio imperdiet, faucibus urna id, egestas mi. Donec venenatis ut elit volutpat cursus. Sed vel quam nec nunc ornare vestibulum. Donec placerat, ipsum vel dignissim convallis, enim lorem pharetra est, id eleifend mauris magna commodo ligula. Sed et pharetra quam. Nullam imperdiet nisl vitae sapien vehicula, eu faucibus lectus semper. Proin nec sollicitudin orci. Vivamus sit amet nulla posuere, rutrum libero eget, porta mi. Duis gravida nisl mollis ligula tempor, vitae sodales turpis pretium. In auctor enim non mauris ornare, nec suscipit ligula venenatis.

