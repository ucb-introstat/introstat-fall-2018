# Shiny Apps

This is a collection of Shiny apps to be used mainly during lecture to illustrate some of the concepts in the textbooks _Statistics_ (FPP) 4th edition, and SticiGui (by Phil Stark).


## Running the apps

The easiest way to run an app is with the `runGitHub()` function from the `"shiny"` package. Please make sure you have installed the package `"shiny"`. In case of doubt, run:

```R
install.packages("shiny")
```


For instance, to run the app contained in the [01-histograms](01-histograms) folder, run the following code in R:

```R
library(shiny)

# Run an app from a subdirectory in the repo
runGitHub("introstat-fall-2018", "ucb-introstat", subdir = "apps/01-histograms")
```
