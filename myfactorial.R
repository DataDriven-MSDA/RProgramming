# @ Kumudini Bhave 
# R Bridge Course Week 1 Problem 1
# This is a generic function to calculate factorial on any given positive number
# myfactorial() function will take one arguments of type "number" 
#
# It validates the value of the input argument and calculates the factorial for positive 
# integer numbers
# 
# As example it calculates the factorial of 12
# Rhis can be verified by the factorial function available in R

myfactorial <- function(num){
                    num=(as.integer(num))
                    print(num)
                    
                    fac = 1
               
                    if (num < 0){
                         print("Factorial of positive numbers only")
                         print("Factorial of negative numbers is NaN ")
                    } else if(num == 0)
                    {
                         print(fac) 
                    } else 
                    {
                         for(i in 1:num)
                         fac =  fac * i
                         print(fac)
                    }
        
}

print("Using function myfactorial(12) : ")
myfactorial(12)
cat("\n","Using function factorial(12) : ",factorial(12))

