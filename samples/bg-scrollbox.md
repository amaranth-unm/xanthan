---
title: Getting Started
layout: base
date: 2024-10-24
---

{% include jumbotron.html
  height="50"
  abs-image-url="/assets/bg-images/flowers-3.jpg"
  title="Background scroll boxes"
%}


## Revealed images
Fixed images move along with scrolling, but sometimes it's fun to have a background image be revealed as the reader scrolls down the page.

Nunc id urna eget nunc hendrerit aliquam. Fusce maximus eleifend ipsum, nec aliquet ante vestibulum eget. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam erat volutpat. Nullam porta blandit tellus, vitae porta odio ultricies a. Integer iaculis euismod feugiat. Etiam ipsum ipsum, pulvinar id semper et, laoreet ac felis. Ut fermentum cursus augue ac feugiat. Nullam convallis vitae sapien in condimentum. Maecenas at vulputate turpis, tempor faucibus dui. Sed quis volutpat elit, commodo mollis ligula. Sed id velit lacus. Mauris et pellentesque justo.

In laoreet, risus ac porttitor congue, libero eros ullamcorper nisl, vel volutpat est nunc sed nisi. Integer dolor ipsum, aliquam ac fermentum dapibus, accumsan eu tortor. Etiam laoreet tellus a dignissim porta. Vivamus et sapien nec urna mollis placerat id nec neque. Phasellus mattis non arcu vitae ultrices. Etiam a posuere ipsum. Nam nunc ex, aliquet eu consequat et, scelerisque quis lorem. Suspendisse sapien tortor, rutrum vitae sollicitudin vel, gravida ut nunc. Fusce non egestas lacus. Maecenas dictum commodo ultricies.

Keep scrolling! This image will set around until the whole image is visible, but you can control how much is visible before the text box starts to scroll up.

<!--bg images look like they are being revealed; try having image that comes up and moves away and can lock into place.-->

{% include scrollybox/bg.html
  height="100"
  image-url="/assets/bg-images/image_3.jpg"
%}


<!-- 
{% include scrollybox/bg.html
  height="220"
  image-url="/assets/bg-images/image_3.jpg"
  pre-box-space="100"
  box-content=" 
       See, there is a text box scrolling by, visible after the whole background came into view. Once this text box scrolls off the top of the page, you'll start to see the next section emerge at the bottom of the screen."
%}
-->



### Scrolly boxes on revealed images
We can also have textboxes scroll up past the image after the image fully comes into view.

Basically, you're scrolling up to reveal a background image, just like above. But this time, once you reveal the whole image (or a specified part of it), a textbox will scroll up, out of view, and the page scrolling will resume as normal.

Nunc posuere metus quis tempus dapibus. Sed hendrerit dapibus risus, gravida lacinia erat placerat ut. Sed purus ante, rutrum in libero sed, pretium laoreet mauris. Pellentesque sit amet viverra est. Mauris mi orci, ullamcorper vitae arcu nec, pretium vestibulum lorem. In pulvinar libero at ex venenatis vestibulum. Sed nec mauris maximus, ornare magna eu, bibendum ligula. Proin a justo non tellus consequat dapibus vel sit amet elit.


{% include scrollybox/bg.html
  height="220"
  image-url="/assets/bg-images/hike-3.jpg"
  pre-box-space="100"
  box-content=" 
       See, there is a text box scrolling by, visible after the whole background came into view. Once this text box scrolls off the top of the page, you'll start to see the next section emerge at the bottom of the screen."
%}




### Scrolly boxes on fixed images
Just above, wee see how to have a large background image "revealed" by the page scrolling up off of it, meaning it looks stationary while text scrolls past it.

As you can see below, you can also have a large backgrtound image scroll into view (instead of remaining still), as is happening below. 

The image freeze it when it gets to the top of the viewport, and a textbox can scroll past, grabbing the background with it as it scrolls away. Check it!


{% include scrollybox/bg-sticky.html
  height="100vh"
  image-url="/assets/bg-images/hike-4.jpg"
  pre-box-space="100vh"
  box-content="
       This text box is scrolling. And as soon as it leaves the viewport, the background image will begin to scroll away. 
<hr/>
       This text box is scrolling. And as soon as it leaves the viewport, the background image will begin to scroll away. 
  <p/>     
       This text box is scrolling. And as soon as it leaves the viewport, the background image will begin to scroll away. 
    <p/>   
       This text box is scrolling. And as soon as it leaves the viewport, the background image will begin to scroll away.   "
%}


## That's a wrap 
That's all for scrollybox basics. If you haven't already, check out the page on [image basics](iamges). We can also do [background switching](bg-switch) and [side scrolling](side-scroll).
