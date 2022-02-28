#"women" is a data set of the average heights and weights for American women ged 30–39
data("women")
women
mean(women$height)
mean(women$weight)

#Install package 'pryr'
install.packages("pryr")
library(pryr)

#S3 class
X <- data.frame(women$height>65, women$weight>135)
X
otype(X)
attributes(X)

#S4 class
setClass('Test', 
         slots=list(height='numeric', weight='numeric'))
Y <- new("Test", height=65, weight=135 )
Y
isS4(Y)
otype(Y)
typeof(Y)
