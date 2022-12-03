
---
title: "My Test"
---

## Description

This is a [Pandoc](http://johnmacfarlane.net/pandoc/) template to generate [reveal.js](http://lab.hakim.se/reveal-js/#/) slideshows.

## Definitions

**Pandoc** is a "universal markup converter" you can run from the command line to convert a simple, plain text file into a beautifully formatted PDF, .docx, HTML, [LaTeX](http://www.latex-project.org/), slideshows… the list goes on.

**reveal.js** is a CSS and JavaScript framework for creating beautiful presentations in HTML5, designed by [Hakim El Hattab](http://hakim.se/).

## Workflow

In order to begin using the template below, you must…

- Install the following in the same directory:
  - slides.md
  - template-revealjs.html
  - css, js, lib folders downloaded [here](https://github.com/hakimel/reveal.js/)
  - any images you may want to include (i.e. aeschylus.jpg as listed in slides.md below)
- Navigate to your directory from the command line and run the following:
  - `pandoc -t html5 -s --template=template.revealjs.html --standalone --section-divs --variable theme="sky" -o slides.html slides.md`
  - the theme ("sky" above) can be changed to any of the options [listed here](lab.hakim.se/reveal-js/#/themes)
  - transitions can be modified by adding `transition="zoom"` or any of the other optoins [listed here](http://lab.hakim.se/reveal-js/#/transitions)