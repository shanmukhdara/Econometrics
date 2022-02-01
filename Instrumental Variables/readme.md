# Instrumental Variables
Let us first define a few terms before moving on to instrumental variables
### Endogeneity 
* Occurs when regressor is correlated with error term
  eg: Income when regressed on education level, you see endogeneity. As there is an unobserved variable ability that is coreelated to both education level and income.
  
**Causes of Endogeneity**
* Measurement errors in explanatory variables
* Reverse causality - explanatory variable is caused by dependent variable

**Is it an issue?**
* Yes, primarily for two reasons. If your error term has any patterns, it indicates that we have a missing variable issue this makes the coeffs of regression non reliable. OLS estimators are biased

**Lets see some examples** <br />
<br />
X --> Y <-- U <br />
* In this case Y is caused by X and some unobserved variable U, but X and U are independent. As U is an unobserved variable this will be captured by the error term of the regression, so error and X are independent here. Its here its not Endogenous but its **Exogenous**. <br />
<br />
X --> Y <-- U <br />
U --> X  <br />

* In this case Y is caused by X and some unobserved variable U, and X is caused by U. As U is an unobserved variable this will be captured by the error term of the regression, so error and X are dependent here. Its **Endogenous**. <br />
<br />

**So how to deal with this?**
* So there are two issues, One endogeneity ans second how to deal with this unobserved variables, and Instrumental variables can help us deal with this situation 

X --> Y <-- U <br />
U --> X  <br />
Z --> X  <br />

Z causes X but is totally independent of un observed variables U


**Z is called a IV if it satisfies the following requirements**
* Z is correlated with X
* Z is uncorrelated with U
* Z doesnt cause Y directly 

Its not that easy to find IV that satisfies all the above

**Two stage least squares estimation (2SLS)** 
1. First stage - Endogenous variables are regressed over IVs and other Exogenous variables
2. Calculate the predicted values from the previous model and replace Endogenous variables with predicted values


**Issues**
* 
