# Boxplots for NBA players data

This is a Shiny app that generates histograms using data of NBA players from the season 2015-2016..


## Motivation

The goal is to provide examples of boxplots and distributions of quantitative variables.

- A _variable_ is a characteristic of the subjects in a study. It can be either qualitative or quantitative.
- A _boxplot_ is a visual display used to look at the distribution of a quantitative variable.
- A _boxplot_ represents a visual display of the 5-number summary. 


## Data

The data set is in the `nba_players.csv` file (see `data/` folder) which contains 528 rows and 39 columns, although this app only uses quantitative variables.


## How to run it?


```R
library(shiny)

# Easiest way is to use runGitHub
runGitHub("introstat-fall-2018", "ucb-introstat", subdir = "02-boxplots")
```

