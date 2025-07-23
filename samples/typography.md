---
title: Typography
layout: base
date: 2019-04-23
---

# Typography
This page describes the various typographic features you can include on your pages. For images, please see the [image guide](images).

As you scroll through the examples, you'll see the typographic feature embedded on the page, and just below a gray box that will show exactly what code to copy and paste into your page.


## Headings

## Second-level heading
blah blah blah blah ...

### Third-level heading
blah blah blah blah ...

#### Fourth-level heading
blah blah blah blah ...

``` markdown
## Second-level heading

### Third-level heading

#### Fourth-level heading
```

---


## Pull Quotes

Even relatively short essays benefit from pull quotes. As the name suggests, the idea is to "pull" a quote outside the main flow of the text to highlight it. You can specify if you want it on the left or right side.

{% include aside.html class="left" text="
Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis diam. Pellentesque ut neque." %}

Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.

To place a pull quote as above, we use:


```
{%raw%}{% include aside.html
  class="left"
  text="Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis diam. Pellentesque ut neque."
  %}{%endraw%}
```

---

### Block quotes
Extended quotations from another source tend to get lost in the text, or be too large for the pull quote format. For those cases, you can use a blockquote to highlight a particularly juicy quotation. Just start your quote with a greater-than sign as shown below:

Here is my regular text. 

> Here is my very interesting quote. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis diam. Pellentesque ut neque.

And back to the regular text.


```
> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis diam. Pellentesque ut neque.
```

---



## Footnotes
All good essays (as you're writing) show what their sources are, which helps readers get a sense of the research that underlies the essay and establishes credability and trustworthiness (or not, if the sources are not very reliable).

To get a footnote to show up, there are two steps:

1) put `[^SOMETEXT]` in your essay where you want the superscript number to appear, and change SOMETEXT to some unique signifier related to the content of the note. In your markdown file, your text will look like:

```
Here's a sample sentence with a footnote at the end.[^source] Here is yet another sentence.[^another-source]
```

2) put  `[^SOMETEXT]: Your footnote text` at the bottom of your essay.


```
[^source]: Your footnote text
[^another-source]: Text for another footnote.
```

Viewed as a webpage, the code above will render as:

Here's a sample sentence with a footnote at the end.[^source] Here is yet another sentence.[^another-source]  Note that the numbering happens automagically, so you don't need to think about that.

[^source]: Your footnote text
[^another-source]: Text for another footnote.

We don't need to footnote every statement, and because you paragraphs should be on the same topic, you can simply use a footnote reference for each paragraph if everything in it comes from the same source. But if you have a certain point you want to make from another source, please cite it directly. Cite as precisely as you can. For books, you need a page number or range, and archival sources should be indicated with collection title, box, folder, etc, as appropriate. Make sure someone else can find what you have cited!


### Footnotes on captions
A good place for image credits is in our "footnotes". To put your image credit in the citation popup, just use the footnote code at the end of your blockquote.

> Here is my quote from a historical source that people would find interesting.[^mysource]

[^mysource]: Some trustworthy reference


Add the code, for that is:
```
> Here is my quote from a historical source that people would find interesting.[^mysource]

[^mysource]: Some trustworthy reference
```

---

