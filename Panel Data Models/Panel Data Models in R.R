# install required packages
install.packages("plm")
#attaching them 
library(plm)

data_wage<- read.csv("panel_wage.csv")
attach(data_wage)

Y <- cbind(lwage)
X <- cbind(exp, exp2, wks, ed)

# convert data into a panel data object 
pdata <- pdata.frame(data_wage, index=c("id","t"))

# Descriptive statistics
summary(Y)
summary(X)

# Lets start with Pooled model 
pooling <- plm(Y ~ X, data=pdata, model= "pooling")
summary(pooling)

# Fixed effects model
fixed <- plm(Y ~ X, data=pdata, model= "within")
summary(fixed)

# Random effects model
random <- plm(Y ~ X, data=pdata, model= "random")
summary(random)

# LM test for random effects versus OLS
plmtest(pooling)
#significant effects supporting random effects

# LM test for fixed effects versus OLS
pFtest(fixed, pooling)
#significant effects supporting fixed effects

# Hausman test for fixed versus random effects model
phtest(random, fixed)
# One of the model is inconsistent, so go with fixed effects model
