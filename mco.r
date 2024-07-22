# Last Names: Alcantara, Alcantara, Fernandez, Kho
# Language: R
# Paradigm: functional

#library(readr)

monthlyIncome <- readline(prompt = "Input Monthly Income: "); 
monthlyIncome <-as.numeric(monthlyIncome); 

sssComputation <- function(value) {
  min <- 4250.00
  max <- 4749.99
  base <- 180
  i <- 1
  
  if (value > 29750.00) {
    sss <- 1350
  } else {
    while (TRUE) {
      if (value >= min && value <= max) {
        sss <- base + (22.5 * i)
        break
      } else if (value > max) {
        min <- min + 500
        max <- max + 500
        i <- i + 1
      } else {
        sss <- base
        break
      }
    }
  }
  
  return(sss)
}

philHealthComputation <-function (value){
  if(value <=10000.00 && value >0.00)
    philHealth <- 500
  if(value >= 10000.01 && value <=99999.99)
    philHealth <- (value*0.05)/2
  if(value >=100000.00)
    philHealth <- 5000
  
  return (philHealth)
}

pagibigComputation <- function (value){
  if(value <= 1500 && value >=0.00)
    pagibig<-value*0.01
  if(value > 1500 && value <=4999.7)
    pagibig <- value*0.02
  if(value >= 4999.8)
    pagibig<-100.00
  
  return(pagibig)
}

incomeTaxComputation <- function(value){
  if(value > 0.00 && value <=20833)
    incomeTax <- 0.00
  if(value >= 20833 && value <= 33332)
    incomeTax <- (value-20833)*0.15
  if(value >= 33333 && value <= 66666)
    incomeTax <- (value-33333)*0.20+1875
  if(value >= 66667 && value <= 166666)
    incomeTax <- (value-66667)*0.25+8541.8
  if(value >= 166667 && value <= 666666)
    incomeTax <- (value-166667)*0.30+3354.8
  if(value >= 666667)
    incomeTax <- (value-666667)*0.35+183541.8
  
  return(incomeTax)
}

sssComputation (monthlyIncome)
sss <- sssComputation(monthlyIncome)

philHealthComputation(monthlyIncome)
philHealth <- philHealthComputation(monthlyIncome)

pagibigComputation(monthlyIncome)
pagibig <- pagibigComputation(monthlyIncome)

totalContributions <- sum(sss,philHealth,pagibig)
taxableIncome <- monthlyIncome - totalContributions
incomeTaxComputation(taxableIncome)
incomeTax <- incomeTaxComputation(taxableIncome)

netAfterTax <- monthlyIncome - incomeTax
totalDeductions <- sum(sss,pagibig,philHealth,incomeTax)
totalPay <- monthlyIncome - totalDeductions

sprintf("SSS:  %#.2f", sssComputation(monthlyIncome))
sprintf("PhilHealth: %#.2f", philHealthComputation(monthlyIncome))
sprintf("Pag-IBIG:  %#.2f", pagibigComputation(monthlyIncome))
sprintf("Total Contributions:  %#.2f", totalContributions)
sprintf("Income Tax:  %#.2f", incomeTaxComputation(taxableIncome))
sprintf("Net Pay after Tax:  %#.2f", netAfterTax)
sprintf("Total Deductions:  %#.2f", totalDeductions)
sprintf("Net Pay after Deductions  %#.2f", totalPay)
