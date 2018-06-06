Getting started with R and RStudio
================
Gaston Sanchez

> ### Learning Objectives:
> 
>   - Get started with R as a scientific calculator
>   - Understand pane layout of RStudio
>   - Understand the help documentation in R
>   - How to install packages

-----

## R as a scientific calculator

**This tutorial assumes that you installed R and RStudio.**

Open RStudio and locate the *console* (or prompt) pane. Let’s start
typing basic things in the console, using R as a scientific calculator:

``` r
# addition
1 + 1
2 + 3

# subtraction
4 - 2
5 - 7

# multiplication
10 * 0
7 * 7

# division
9 / 3
1 / 2

# power
2 ^ 2
3 ^ 3
```

### Functions

R has many functions. To use a function, type its name followed by
parenthesis. Inside the parenthesis you pass an input. Most functions
will produce some type of output:

``` r
# absolute value
abs(10)
```

    ## [1] 10

``` r
abs(-4)
```

    ## [1] 4

``` r
# square root
sqrt(9)
```

    ## [1] 3

``` r
# natural logarithm
log(2)
```

    ## [1] 0.6931472

### Comments in R

All programming languages use a set of characters to indicate that a
specific part or lines of code are **comments**, that is, things that
are not to be executed. R uses the hash or pound symbol `#` to specify
comments. Any code to the right of `#` will not be executed by R.

``` r
# this is a comment
# this is another comment
2 * 9
```

    ## [1] 18

``` r
4 + 5  # you can place comments like this
```

    ## [1] 9

### Variables and Assignment

R is more powerful than a calculator, and you can do many more things
than practically most scientific calculators. One of the things you will
be doing a lot in R is creating variables or objects to store values.

For instance, you can create a variable `x` and give it the value of 1.
This is done using what is known as the **assignment operator** `<-`,
also known in R as the *arrow* operator:

``` r
x <- 1
x
```

    ## [1] 1

This is a way to tell R: “create an object `x` and store in it the
number 1”. Alternatively, you can use the equals sign `=` as an
assignment operator:

``` r
y = 2
y
```

    ## [1] 2

With variables, you can operate the way you do algebraic operations
(addition, subtraction, multiplication, division, power, etc):

``` r
x + y
```

    ## [1] 3

``` r
x - y
```

    ## [1] -1

``` r
x * y
```

    ## [1] 2

``` r
x / y
```

    ## [1] 0.5

``` r
x ^ y
```

    ## [1] 1

### Case Sensitive

R is case sensitive. This means that `abs()` is not the same as `Abs()`
or `ABS()`. Only the function `abs()` is the valid one.

``` r
# case sensitive
x = 1
X = 2
x + x
```

    ## [1] 2

``` r
x + X
```

    ## [1] 3

``` r
X + X
```

    ## [1] 4

### Some Examples

Here are some examples that illustrate how to use R to define variables
and perform basic calculations:

``` r
# convert Fahrenheit degrees to Celsius degrees
fahrenheit = 50
celsius = (fahrenheit - 32) * (5/9)
celsius
```

    ## [1] 10

``` r
# compute the area of a rectangle
rec_length = 10
rec_height = 5
rec_area = rec_length * rec_height
rec_area
```

    ## [1] 50

``` r
# degrees to radians
deg = 90
rad = (deg * pi) / 180
rad
```

    ## [1] 1.570796

-----

## More about RStudio

You will be working with RStudio a lot, and you will have time to learn
many of the bells and whistles RStudio provides. Think about RStudio as
your “workbench”. Keep in mind that RStudio is NOT R. RStudio is an
environment that makes it easier to work with R, while taking care of
the little tasks that can be a hassle.

### A quick tour of RStudio

  - Understand the **pane layout** (i.e. windows) of RStudio
      - Source
      - Console
      - Environment, History, etc
      - Files, Plots, Packages, Help, Viewer
  - Customize RStudio Appearance of source pane
      - font
      - size
      - background

### Getting help

Because we work with functions all the time, it’s important to know
certain details about how to use them, what input(s) is required, and
what is the returned output.

There are several ways to get help.

If you know the name of a function you are interested in knowing more,
you can use the function `help()` and pass it the name of the function
you are looking for:

``` r
# documentation about the 'abs' function
help(abs)

# documentation about the 'mean' function
help(mean)
```

Alternatively, you can use a shortcut using the question mark `?`
followed by the name of the function:

``` r
# documentation about the 'abs' function
?abs

# documentation about the 'mean' function
?mean
```

  - How to read the manual documentation:
      - Title
      - Description
      - Usage of function
      - Arguments
      - Details
      - See Also
      - Examples\!\!\!

`help()` only works if you know the name of the function your are
looking for. Sometimes, however, you don’t know the name but you may
know some keywords. To look for related functions associated to a
keyword, use `help.search()` or simply `??`

``` r
# search for 'absolute'
help.search("absolute")

# alternatively you can also search like this:
??absolute
```

Notice the use of quotes surrounding the input name inside
`help.search()`

### Installing Packages

R comes with a large set of functions and packages. A package is a
collection of functions that have been designed for a specific purpose.
One of the great advantages of R is that many analysts, scientists,
programmers, and users can create their own pacakages and make them
available for everybody to use them. R packages can be shared in
different ways. The most common way to share a package is to submit it
to what is known as **CRAN**, the *Comprehensive R Archive Network*.

You can install a package using the `install.packages()` function. Just
give it the name of a package, surrounded by quotes, and R will look for
it in CRAN, and if it finds it, R will download it to your computer.

``` r
# installing
install.packages("knitr")
```

You can also install a bunch of packages at once:

``` r
install.packages(c("readr", "ggplot2"))
```

The installation of a package needs to be done only once. After a
package has been installed, you can start using its functions by
*loading* the package with the function `library()`

``` r
library(knitr)
```
