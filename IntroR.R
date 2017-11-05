## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ---- eval = F-----------------------------------------------------------
## getwd()

## ---- eval = F-----------------------------------------------------------
## setwd("D:/Jared/work/R/R_Practice")
## dir.create("TempFolder")
## setwd("D:/Jared/work/R/R_Practice/TempFolder")

## ---- eval=F-------------------------------------------------------------
## ls()

## ------------------------------------------------------------------------
rm(list=ls())

## ----calculations--------------------------------------------------------
4+2
6*8
(842-62)/3

## ----vectors-------------------------------------------------------------
1:20
c(1,2,3,4,5)
seq(0,100,by=10)
rep(1:5,5)
rep("A rolling stone gathers no moss",4)

## ----Values--------------------------------------------------------------
x <- 1:10
y <- c(1.5, 9, 3.46, 12.2)

## ----print---------------------------------------------------------------
x
(x <- 1:10)
x[1:5]
y[c(2,4)]
y[-c(2,3)]

## ----arithmetic----------------------------------------------------------
x*3
c(x,y)
sqrt(x)

## ----Vector functions----------------------------------------------------
sum(x)
summary(x)
range(y)

## ----Matrix1-------------------------------------------------------------
test_matrix <- matrix(data = x, nrow = 4, ncol = 5)
test_matrix
# Note, I could call this anything.  Best to name things in a way that are meaningful though!
superman <- matrix(data = x, nrow = 4, ncol = 5)

## ----Matrix notation-----------------------------------------------------
#test_matrix(row,column)
test_matrix[1,5]

## ----Matrix notation2----------------------------------------------------
test_matrix[,4]

## ----Matrix notation2b---------------------------------------------------
test_matrix[4,]

## ----Matrix notation2c---------------------------------------------------
test_matrix[3,c(2,4)]

## ----Matrix notation3----------------------------------------------------
countries <- c("United States", "Pakistan", "Ireland", "China")
cbind(test_matrix,countries)

#Note that I am not changing the contents of test_matrix.  I could, but I'd have to change my code to
#test_matrix <- cbind(test_matrix,countries)

## ----Dataframe-----------------------------------------------------------
test_dataframe <- data.frame(test_matrix,countries)
test_dataframe
# Have I changed the file type?
class(test_dataframe)

## ----Dataframe rename----------------------------------------------------
names(test_dataframe) <- c("Val1", "Val2", "Val3", "Val4", "Val5", "Countries")
test_dataframe
# Also see the colnames() function

## ----Dataframe ref-------------------------------------------------------
test_dataframe[3,5]
test_dataframe[,5]
test_dataframe$Val5[3]
test_dataframe$Val5
test_dataframe[,"Val5"]

## ----Dataframe dims------------------------------------------------------
nrow(test_dataframe)
ncol(test_dataframe)
dim(test_dataframe)

## ----install, eval = F---------------------------------------------------
## install.packages("swirl")
## 
## # Data can also be installed locally if you've downloaded the zip file to your hard drive
## #install.packages("yourzip.tar.gz", repos=NULL)

## ----install2, message=FALSE, warning = FALSE----------------------------
require(swirl)

## ----install3, eval = F--------------------------------------------------
## install_from_swirl("R Programming")

## ----install4, eval=F----------------------------------------------------
## swirl()

