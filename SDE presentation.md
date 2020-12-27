Explore the Swiss Dataset 
========================================================
author: Farah M
date: December 25, 2020
autosize: true

The Application
========================================================


This application gives a brief data exploration the Swiss Dataset, which consists of a  standardized fertility measure and socio-economic indicators for each of 47 French-speaking provinces of Switzerland at about 1888. 


The Interface
========================================================
The Main Panel consists of:

* A histogram displaying the distribution of the variable selected.
* A scatter plot 
Consists of a histogram displaying the relationship between 2 variables as well as the regression line of this relationship
 
On the Side Panel, the user:

* Selects a variable and a bin size to control the histogram plot
* Selects the 2 variables for the scatter plot 


The Swiss Dataset
========================================================


```r
str(swiss)
```

```
'data.frame':	47 obs. of  6 variables:
 $ Fertility       : num  80.2 83.1 92.5 85.8 76.9 76.1 83.8 92.4 82.4 82.9 ...
 $ Agriculture     : num  17 45.1 39.7 36.5 43.5 35.3 70.2 67.8 53.3 45.2 ...
 $ Examination     : int  15 6 5 12 17 9 16 14 12 16 ...
 $ Education       : int  12 9 5 7 15 7 7 8 7 13 ...
 $ Catholic        : num  9.96 84.84 93.4 33.77 5.16 ...
 $ Infant.Mortality: num  22.2 22.2 20.2 20.3 20.6 26.6 23.6 24.9 21 24.4 ...
```

For More Information
========================================================

Please see the following links:

1. The Swiss Fertility and Socioeconomic Indicators Data (swiss data) can be accessed with **data(swiss)** in R

2. The Shiny app can be accessed [here](https://sarizzuz.shinyapps.io/SwissDataExplore/)
