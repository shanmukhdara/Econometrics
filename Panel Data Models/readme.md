# Panel Data 
### What is panel data?
* Panel data has both cross-sectional and time series dimensions
  eg: Impact of education over income, with data across time and individuals
* Notation : N individuals observed at T regular time periods
* Sampling rule : random and independent
  eg: Income of one individuals should impact income of ther individual 

### practically is it possible to collect data of selected individuals over time?
* If we do have data of all individuals across all time periods, its called balanced panel data, otherwise its unbalanced (we have methods to take care of this)

### Panel data types 
* Short panel -  many N, few T
* Long panel -  many T, few N
* Both -  Many T, many N

### Variation for variable and regressors
* Overall - variation over time and individuals
* Between - variation b/w individuals
* Within -  variation with in individuals over time

**Overall variation** rougly equal to Between variation + Within variation 

### Regressors 
* Varying - varies both with time and individual eg: annual income..
* Time invariant - doesnt vary with time (didnt change in the collected data set) eg: race, education.., so these have **zero within variation**
* individual invariant - doesnt vary with individuals eg: econoly trends.., these have **zero between variation**

**Sanity check** - check within and between variations to see which is varying over time and which is varying over individuals

# Panel data models
### Pooled model
* Assumes constant coefficients alpha and beta, it ignores that this is a panel data
  Y(i,t) = alpha + beta * X(i,t) + error
  Not used much 

## Individual specific effects model 
* Assumes that there is a heterogenity accross individuals
  Y(i,t) = alpha(i) + beta * X(i,t) + error
  Alpha(i) stays constant for a specific individual over time, beta is constant 
  eg: some people get higher salary on avg irrespective of education level
### Fixed effects model
* Allows alpha(i) to be correlated with X(i,t)
* So intercept varies accross individuals but slope remains constant
* alpha(i) is nothing but the leftover variation in the dependent variable that cannot be explained by regressors

### Random effects model 
* individual effects alpha(i) is independent of regressors X(i,t)
* so alpha(i) is considered as error term to form a composite error term 


### Estimator properties 
* Consistency 
* Efficiency

Now Lets try it in R
Data Source : https://sites.google.com/site/econometricsacademy/econometrics-models/panel-data-models
