First contact with Rmd files
================
Gaston Sanchez

> ### Learning Objectives:
> 
>   - Get started with R markdown (Rmd) files
>   - Understand the anatomy of an Rmd file
>   - Get to know markdown syntax
>   - Understand code chunks

## Introduction to Rmd files

In this course, you will be using one main type of source file known as
*R markdown* file, simply referred to as `Rmd` files.

**Rmd** files are a special type of file technically known as *dynamic
documents*. This type of documents allows you to combine narrative
(text) with R code, which means that you write everything (text and
code) in one single file.

  - In the menu bar of RStudio, click on **File**
  - Then **New File**, and choose **R Markdown**
  - Select the default option “Document” (HTML output), and click
    **Ok**.
  - Locate **Knit** the button (the one with a knitting icon) and click
    on it so you can see how `Rmd` files are rendered and displayed as
    HTML documents.

The narrative text is written with a special syntax called
[markdown](https://en.wikipedia.org/wiki/Markdown). The R code is
written using R syntax, inside *code chunks*.

It is extremeley important that you quickly become familiar with `Rmd`
files. You’ll be using `Rmd` files to write your lab and homework
assignments, and convert them to HTML files (you could also convert them
to Word, or PDF files, among other formats).

### Yet Another Syntax to Learn

R markdown (`Rmd`) files use
[markdown](https://daringfireball.net/projects/markdown/) as the main
syntax to write content and text.

Markdown is a very lightweight type of [markup
language](https://en.wikipedia.org/wiki/Markup_language), and it is
relatively easy to learn. If you are new to Markdown, please take a look
at the following tutorials:

  - [www.markdowntutorial.com](http://www.markdowntutorial.com)
  - [commonmark.org/help/tutorial](http://commonmark.org/help/tutorial/)
  - [agea.github.io/tutorial.md](http://agea.github.io/tutorial.md/) by
    Andrea Agili

-----

## Get to know the `Rmd` files

An `Rmd` file has a very specific structure. The first part at the very
top is the YAML header. This header contains configuration options and
global settings, things like:

  - title
  - author
  - date
  - output: `html_document`

For pretty much all the assignments in this course, you can use the
default options (no need to add or remove yaml settings)

The narrative text has to be written in Markdown syntax. Optionally, you
can include math symbols and expressions using LaTeX notation.

The R commands must be specified inside so-called *code chunks* or
chunks.

RStudio has a basic tutorial about R Markdown files: [Rstudio markdown
tutorial](https://rmarkdown.rstudio.com/lesson-1.html). Take a look at
the following sections:

  - Introduction
  - How It Works
  - Code Chunks
  - Inline Code
  - Markdown Basics