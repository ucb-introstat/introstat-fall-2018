# Syllabus, Stat 131A

- __Icons__:
    + Tentative calendar (weekly topics), subject to changes depending on 
    the pace of the course.
    + Notes (:file_folder:) involves material discussed in class.
    + Reading (:book:) involves related chapters from __SticiGui__ text.


-----


## 0. Course Introduction, Data and Variables

- :card_index: __Dates__: Aug 22-24
- :paperclip: __Topics__: Understand the concept of "data" for statistical analysis, the concept of variables, and the difference between qualitative and quantitative variables. Also, learn how to summarize information with frequency tables, and visual displays with bar-charts.
- :file_folder: __Notes__:
    + [Welcome to Stat 131A](../slides/00-about-course.pdf)
    + [What is data?](../slides/istat-lec01-data-variables.pdf)
    + [Frequency tables and barcharts](../slides/istat-lec02-barcharts.pdf)
- :book: __Reading__:
    + [Course policies](policies.md) and [Piazza etiquette](piazza.md)
    + [Chapter 3: Statistics](https://www.stat.berkeley.edu/~stark/SticiGui/Text/histograms.htm)
- :microscope: __Lab__: No lab
- :speaker: __To Do__: Please spend some time outside class to review the course policies, and piazza etiquette rules.
    + Install [__R__](https://cran.cnr.berkeley.edu/) 
    + Install [RStudio](https://www.rstudio.com/products/rstudio/download/#download) Desktop (open source version, free)


-----


## 1. Summarizing Data Graphically and Numerically (part 1)

- :card_index: __Dates__: Aug 27-31
- :paperclip: __Topics__: Understand histograms, how to read them, how to graph them, and what makes them different from bar-charts. Likewise, learn about measures of center, their meanings, properties, and how to use them in practice. In addition, we discuss other summaries for describing distributions.
- :file_folder: __Notes__:
    + [Histograms, skeweness, and distributions](../slides/istat-lec03-histograms.pdf)
    + Histograms (demo)
    + [Measures of center](../slides/istat-lec04-measures-of-center1.pdf)
    + [Using mean and median](../slides/istat-lec05-measures-of-center2.pdf)
    + [Five-number summary and boxplots](../slides/istat-lec06-spread-boxplots.pdf)
- :book: __Reading__:
    + [Chapter 3: Statistics](https://www.stat.berkeley.edu/~stark/SticiGui/Text/histograms.htm)
    + [Chapter 4: Measures of Location and Spread](https://www.stat.berkeley.edu/~stark/SticiGui/Text/location.htm)
- :microscope: __Lab__:
    + [1a: Getting started with R and RStudio](../labs/lab01a-R-basics.md) (Tu; due Aug-29)
    + [1b: Histograms](../labs/lab01b-histograms-questions.pdf) (Th; due Aug-31)
- :bulb: __Cheatsheet__: [RStudio cheat sheet](../cheatsheets/rstudio-cheatsheet.pdf) and [R markdown cheat sheet](../cheatsheets/rmarkdown-cheatsheet.pdf)
- :dart: __HW 01__: Markdown (due Sep-03)


-----


## 2. Summarizing Data Graphically and Numerically (part 2)

- :card_index: __Dates__: Sep 03-07 _(Holiday Sep-03)_
- :paperclip: __Topics__: Learning about measures of spread, their meanings, properties, rationales, and how to use them in practice. Also, first contact with the normal curve, and its approximation for symmetric bell-shaped distributions.
- :file_folder: __Notes__:
    + [Measures of spread: Standard Deviation](../slides/istat-lec07-spread-sd.pdf)
    + [Normal Curve](../slides/istat-lec08-normal-curve.pdf)
    + Normal curve (demo)
- :book: __Reading__:
    + [Chapter 4: Measures of Location and Spread](https://www.stat.berkeley.edu/~stark/SticiGui/Text/location.htm)
    + [Chapter 23: Normal Curve](https://www.stat.berkeley.edu/~stark/SticiGui/Text/clt.htm)
- :microscope: __Lab__:
    + 2a: Centers and boxplots (Tu; due Sep-05)
    + 2b: Boxplots and spreads (Th; due Sep-07)
- :bulb: __Cheatsheet__: [Base R](../cheatsheets/base-r-cheatsheet.pdf)
- :dart: __HW 02__: Distributions (due Sep-10)


-----


## 3. Scatterplots and Correlation

- :card_index: __Dates__: Sep 10-14
- :paperclip: __Topics__: Tools for studying relationships between two quantitative variables: scatter plots, correlation coefficient, regression analysis.
- :file_folder: __Notes__:
    + [Scatter diagrams and correlation](../slides/istat-lec09-scatterplots-correlation.pdf)
    + [More about correlation](../slides/istat-lec10-more-about-correlation.pdf)
    + corr-coeff-diagrams (demo)
- :book: __Reading__:
    + [Chapter 5: Scatterplots](https://www.stat.berkeley.edu/~stark/SticiGui/Text/scatterplots.htm)
    + [Chapter 7: Correlation](https://www.stat.berkeley.edu/~stark/SticiGui/Text/correlation.htm)
    + [Chapter 8: Computing the correlation coefficient](https://www.stat.berkeley.edu/~stark/SticiGui/Text/computeR.htm)
- :microscope: __Lab__:
    + 3a: Spreads and normal curve (Tu; due Sep-12)
    + 3b: Scatterplots and correlation (Th; due Sep-14)
- :bulb: __Cheatsheet__: [Data import cheat sheet](../cheatsheets/data-import-cheatsheet.pdf)
- :dart: __HW 03__: Correlation (due Sep-17)


-----


## 4. Regression (part 1)

- :card_index: __Dates__: Sep 17-21
- :paperclip: __Topics__: Regression Analysis
- :file_folder: __Notes__:
    + [Intro to Regression](../slides/istat-lec11-regression-intro.pdf)
    + [Regression Line](../slides/istat-lec12-regression-line.pdf)
    + RMS Error for Regression
    + heights-data (demo)
- :book: __Reading__:
    + [Chapter 9: Regression](https://www.stat.berkeley.edu/~stark/SticiGui/Text/regression.htm)
    + [Chapter 10: Regression Diagnostics](https://www.stat.berkeley.edu/~stark/SticiGui/Text/regressionDiagnostics.htm)
- :microscope: __Lab__:
    + 4a: Regression line with R (Tu; due Sep-19)
    + 4b: Predictions and Errors with R (Th; due Sep-21)
- :dart: __HW 04__: Regression (due Sep-24)


-----


## 5. Regression (part 2)

- :card_index: __Dates__: Sep 24-28
- :paperclip: __Topics__: Regression Analysis
- :file_folder: __Notes__:
    + regression-residuals (demo)
    + regression-strips (demo)
- :book: __Reading__:
    + [Chapter 11: Errors in Regression](https://www.stat.berkeley.edu/~stark/SticiGui/Text/regressionErrors.htm)
- :microscope: __Lab__:
    + 5a: Regression line with R (Tu; due Sep-26)
    + 5b: Review session (Th)
- :dart: __HW 05__: Regression (due Sep-28)
- :mortar_board: __MIDTERM 1__: Friday Sep-28


-----


## 6. Probability basics (theories, axioms, and rules)

- :card_index: __Dates__: Oct 01-05
- :paperclip: __Topics__: Statistics can be used for making decisions when we are faced with uncertainties. To do so, you need to learn some of the basic tools provided by Probability, the branch of Math that studies randomness. This part of the course gives you a general introduction to probability.
- :file_folder: __Notes__:
    + Probability: what is it? 
    + Probability concepts (part 1)
    + Probability concepts (part 2)
- :book: __Reading__:
    + [Chapter 13: The Meaning of Probability](https://www.stat.berkeley.edu/~stark/SticiGui/Text/probabilityPhilosophy.htm)
    + [Chapter 17: Probability, Axioms and Fundamentals](https://www.stat.berkeley.edu/~stark/SticiGui/Text/probabilityAxioms.htm)
    + [Chapter 18: The Monty Hall Problem](https://www.stat.berkeley.edu/~stark/SticiGui/Text/montyHall.htm)
- :microscope: __Lab__:
    + 6a: Probability basics (Tu; due Oct-03)
    + 6b: Probability rules 1 (Th; due Oct-05)
- :dart: __HW 06__: TBD (due Oct-08)


-----


## 7. Two-Way tables and Random Variables (part 1)

- :card_index: __Dates__: Oct 08-12
- :paperclip: __Topics__: We turn our attention to categorical variables. The objective is to study the relationship between two categorical variables and introduce you to the concept of probability. Two-way tables give us a practical context for talking about probability. We also use two-way tables to help us visualize and solve real-world problems involving probability.
- :file_folder: __Notes__:
    + Two-way tables: marginal, conditional, and joint frequencies
    + Introduction to Random Variables and box models
    + Expected value
    + Standard error
- :book: __Reading__:
    + [Chapter 19: Probability Meets Data](https://www.stat.berkeley.edu/~stark/SticiGui/Text/montyHallTest.htm) (Binomial Distribution)
    + [Chapter 20: Random Variables and Discrete Distributions](https://www.stat.berkeley.edu/~stark/SticiGui/Text/randomVariables.htm)
    + [Chapter 21: The Long Run and the Expected Value](https://www.stat.berkeley.edu/~stark/SticiGui/Text/expectation.htm)
- :microscope: __Lab__:
    + 7a: Probability rules 2 (Tu; due Oct-10)
    + 7b: TBD (Th; due Oct-12)
- :dart: __HW 07__: TBD (due Oct-15)


-----


## 8. Binomial and Normal Distributions

- :card_index: __Dates__: Oct 15-19
- :paperclip: __Topics__: We discuss probability more generally. Then we begin to develop the probability machinery that underlies inference.
- :file_folder: __Notes__:
    + Binomial Distribution
    + Normal Distribution
- :book: __Reading__:
    + [Chapter 22: Standard Error](https://www.stat.berkeley.edu/~stark/SticiGui/Text/standardError.htm)
    + [Chapter 23: Normal Distribution](https://www.stat.berkeley.edu/~stark/SticiGui/Text/clt.htm)
    + [Chapter 24: Sampling](https://www.stat.berkeley.edu/~stark/SticiGui/Text/sampling.htm)
- :microscope: __Lab__:
    + 8a: TBD (Tu; due Oct-17)
    + 8b: TBD (Th; due Oct-19)
- :dart: __HW 08__: TBD (due Oct-22)


-----


## 9. Sampling and Chance Errors (part 1)

- :card_index: __Dates__: Oct 22-26
- :paperclip: __Topics__: We discuss probability more generally. Then we begin to develop the probability machinery that underlies inference.
- :file_folder: __Notes__:
    + random variables, and box models
    + expected value
    + standard error
- :book: __Reading__:
    + [Chapter 22: Standard Error](https://www.stat.berkeley.edu/~stark/SticiGui/Text/standardError.htm)
    + [Chapter 23: Normal Distribution](https://www.stat.berkeley.edu/~stark/SticiGui/Text/clt.htm)
- :microscope: __Lab__:
    + 9a: TBD (Tu; due Oct-24)
    + 9b: TBD (Th; due Oct-26)
- :dart: __HW 09__: TBD (due Oct-29)


-----


## 10. Sampling and Chance Errors (part 2)

- :card_index: __Dates__: Oct 29-31, Nov 02
- :paperclip: __Topics__: A central problem in statistics is to obtain information about a population, a collection of units, without examining every unit in the population—only a sample from the population.
- :file_folder: __Notes__:
    + Sampling
    + Chance errors
- :book: __Reading__:
    + [Chapter 24: Sampling](https://www.stat.berkeley.edu/~stark/SticiGui/Text/sampling.htm)
    + [Chapter 25: Estimating Parameters from SRS](https://www.stat.berkeley.edu/~stark/SticiGui/Text/estimation.htm)
- :microscope: __Lab__:
    + 10a: TBD (Tu; due Oct-31)
    + 10b: Review Session (Th)
- :dart: __HW 10__: TBD (due Nov-02)
- :mortar_board: __MIDTERM 2__: Friday Nov-02


-----


## 11. Confidence Intervals

- :card_index: __Dates__: Nov 05-09
- :paperclip: __Topics__: One of the goals of inference is to draw a conclusion about a population on the basis of a random sample from the population. Obviously, random samples vary, so we need to understand how much they vary and how they relate to the population. Our ultimate goal is to create a probability model that describes the long-run behavior of sample measurements. We use this model to make inferences about the population.
- :file_folder: __Notes__:
    + Confidence Intervals for Proportions
    + Confidence Intervals for Means
- :book: __Reading__:
    + [Chapter 26: Confidence Intervals](https://www.stat.berkeley.edu/~stark/SticiGui/Text/confidenceIntervals.htm)
- :microscope: __Lab__:
    + TBD (Tu)
    + TBD (Th)
- :dart: __HW 11__: TBD (due Nov-dd)


-----


## 12. Hypothesis Tests

- :card_index: __Dates__: Nov 12-16 _(Holiday Nov 12)_
- :paperclip: __Topics__: Now we look more carefully at how to test a claim with a hypothesis test. Statistical investigations begin with research questions. We begin our discussion of hypothesis tests with research questions that require us to test a claim. Later we look at how a claim becomes a hypothesis.
- :file_folder: __Notes__:
    + Introduction to Hypothesis Tests
    + Hypothesis test for one Mean
- :book: __Reading__:
    + [Chapter 27: Hypothesis Testing](https://www.stat.berkeley.edu/~stark/SticiGui/Text/testing.htm)
- :microscope: __Lab__:
    + TBD (Tu)
    + TBD (Th)
- :dart: __HW 12__: TBD (due Nov-dd)


-----


## 13. Thanksgiving Week

- :card_index: __Dates__: Nov 19-23 _(No instruction Nov 21-23)_
- :paperclip: __Topics__: Tests of significance.
- :file_folder: __Notes__:
    + Hypothesis test for one Proportion
- :book: __Reading__:
    + [Chapter 27: Hypothesis Testing](https://www.stat.berkeley.edu/~stark/SticiGui/Text/testing.htm)
- :microscope: __Lab__:
    + TBD (Tu)


-----


## 14. Hypothesis Tests

- :card_index: __Dates__: Nov 26-30
- :paperclip: __Topics__: More about tests of significance.
- :file_folder: __Notes__:
    + More about tests
- :book: __Reading__:
    + [Chapter 31: Chi-Squared Test](https://www.stat.berkeley.edu/~stark/SticiGui/Text/chiSquare.htm)
- :microscope: __Lab__:
    + TBD (Tu)
    + TBD (Th)
- :dart: __HW 13__: TBD (due Nov-dd)


-----


## 15. RRR Week and Final Exam

- :card_index: __Dates__: Dec 03-07
- :paperclip: __Topics__: Prepare for final examination
- :file_folder: __Notes__:
    + No lecture. Instructor will hold OH (in 309 Evans)
- :mortar_board: __FINAL__: Dec Th 13, 3-6pm, Room TBA
    + See announcement about the final test on bCourses

