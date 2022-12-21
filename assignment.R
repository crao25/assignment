#!/usr/local/bin/Rscript


## define arguments so the Rscript can be run from commandline
args <- commandArgs(trailingOnly = TRUE)

## read binary file from stdin
con <- file("stdin", "rb") ## establish connection to standard input
data <- readBin(con, what= raw(), n= 10)## read standard input
#data <- readBin(file("input.bin", "rb"), raw(), n=10)

## manipulate hexadecimal to numeric 
numdata <- as.numeric(data)
newdata <- c()

## make a separate list for pi and qi elements by taking the elements at odd positions for pi and even positions for qi
pi <- numdata[c(TRUE,FALSE)]  ##odd
qi <- numdata[c(FALSE, TRUE)] ## even
for (i in 1:length(pi)) {
  ## put a condition that if pi is 0 -> take qi element
  if (pi[i]==0) {
    newdata[i] = qi[i]
    
  }
  ## put a condition that if pi > 0 -> 
  ## go back pi elements and take first qi elements
  else if (pi[i]>0) {
    newdata[i]=newdata[c(pi[tail(pi,pi[i])][1]:qi[i])]
  }
}
## convert new numeric data back to hexadecimal
newdata <- as.raw(as.hexmode(newdata))

## write binary file to stdout and errors to stderr
cat("The output is: ")
cat(newdata)

