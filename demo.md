---
title: Getting Started
layout: base
date: 2024-10-24
---

<style>
/* Make sure body and html take up full height */
html, body {
  margin: 0;
  padding: 0;
  height: 100%;
}

.background-image {
  background-size: cover;
  background-position: center;
  background-attachment: fixed; /* This makes the background fixed while scrolling */
  height: 250vh; /* Viewport height */
  position: relative;
}

/* Styling the scrolling text box */
.text-box {
  max-width: 600px;
  margin: 0 auto;
  padding: 50px;
  background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for text box */
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  position: relative;
  z-index: 1;
}

/* Body height for scrolling */
body {
  height: 200vh; /* Enough height to allow for scrolling */
  font-family: Arial, sans-serif;
}


/* Common styles for each section */
.section {
    position: relative;
    height: 100vh; /* Full screen height */
    scroll-snap-align: start; /* Snap sections to start on scroll */
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    font-size: 3em;
    text-align: center;
}

/* Background images for different sections */
.section-1 {
    background-image: url('{{site.baseurl}}/assets/bg-images/image_1.jpg'); /* Replace with your image */
    background-size: cover;
    background-position: center;
}

.section-2 {
    background-image: url('{{site.baseurl}}/assets/bg-images/image_2.jpg'); /* Replace with your image */
    height: 20vh; /* Full screen height */
    background-size: cover;
    background-position: center;
}

.section-3 {
    background-image: url('{{site.baseurl}}/assets/bg-images/image_3.jpg'); /* Replace with your image */
    background-size: cover;
    background-position: center;
}

#rest {
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 1fr;
  background: blue;
  height:auto;
}

#content {
  width: 50%;
  z-index: 0;
  grid-row: 1;
  grid-column: 1;
  margin:auto;
  margin-top: 100vh;
  margin-bottom: 100vh;
  background: yellow;
  height:auto;
}

#sticky_back {
  width: 100%;
  height: 100vh;
  grid-row: 1;
  grid-column: 1;
  position: sticky;
  top: 0;
  background-image: url("https://images.pexels.com/photos/1591447/pexels-photo-1591447.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
  background-repeat: no-repeat;
  background-size: cover;
}


</style>


## What is Xanthan?
Xanthan is a simple website framework that facilitates digital storytelling with a Story Map-like interface. It's med-tech (not low or hi), which means that changes are a bit more technical than just editing a web form. But they don't require any programming skills. 


{% include background.html
  height="50"
  image-url="/assets/bg-images/image_1.jpg"
  title="fishing"
%}

## Why Xanthan?
It is unlike online website tools that allow you to drag and drop elements of a webpage together. These are useful, lo-tech solutions for the user. But they have a few main limitations: 1) Functionality. 2) Openness. Your website is effectivel locked into a particular framework that means starting over if you ever need to change. 

{% include figure.html
  class="img-right"
  width="33%"
  caption="Xanthan chemical structure"
  image-url="Xanthan.svg"
  source-url="https://commons.wikimedia.org/wiki/File:Xanthan.svg"
%}

## What can I do with it?
Keep reading! This page demonstrates the various components you can assemble in your essay. 

### Nav bar
On the very top, you can see the basic nav bar. Of course there are other places it can go.


### Images
At the top, just under the nav bar, you can see a full width "jumbotron" image as a page header
On the right you can see a basic image display. You can control the width and placement.

### Scrolly boxes
Yes, we can scroll text boxes over a background image.

<!--bg images look like they are being revealed; try having image that comes up and moves away and can lock into place.-->

{% include background.html
  height="220"
  image-url="/assets/bg-images/image_3.jpg"
  pre-box-space="100"
  box-content="
       See, there is a text box scrolling by right now! And once this scrolls off the top of the page, you'll start to see the next section emerge at the bottom of the screen.
  "
%}


It is written using Markdown so that the underlying code is much easier to edit that raw HTML.


### Sticky containers
You can also have a large backgrtound image scroll into view, then freeze it while other contents scrolls past, and then scroll the background image away.

 <div id="rest">
    <div id="sticky_back"></div>
    <div id="content">
      <span>
        psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim vennostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut laborere magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut alnostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut laborere magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut alnostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim e et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostididunt ut laborere magna aliqua. Ut enim ad minim veniam, quis nostididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio
      </span>
    </div>
  </div>



For more information about how to add features to your pages, see the [getting started guide](guides/getting-started), as well as the [loading images](guides/loading-images) and [code](guides/code) guides.
