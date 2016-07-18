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





# @ Kumudini Bhave 
# R Bridge Course Week 1 Problem 2
# This is script to create a vector haveing elements ranging from 20 to 50 with increment of 5
# This si done with seq function
# @argument1 start in range
# @argument2 end in range
# @argument3 start in incremental value

myVector <- seq(20, 50, by=5)
myVector



# @ Kumudini Bhave 
# R Bridge Course Week 1 Problem 3
# This is a generic function to calculate roots of a quadratic equation 
# given 3 arguments as its coefficients
# quadrootx() function will take three arguments of type "number" 
#
# It validates to find if the quadratic frmula evaluates to real or complex numbers
# A few examples are evaluated with this function in this script.
# 

quadrootx<-function(a,b,c)
{
     
     print("*****Quadratic Equation*****")
     paste0("\n")
     equation = cat(a,"x^2")
     if (b>=0)
     {
          equation= cat(equation," + ",b,"x")
     }else
     {
          equation= cat(equation," ",b,"x")
     }
     
     if (c>0)
     {
          equation= cat(equation," + ",c)
     }else if(c<0)
     {
          equation= cat(equation," ",c)
     }
     
     
     
     cat("\n",equation)
     paste0("\n")
     
     x1=1
     x2=1
     
     
     if((b^2) >= (4*a*c))
     {
          ifreal="TRUE"
     }else 
     {
          ifreal="FALSE"
     }
     
     
     
     if (ifreal)  # Fetches real number roots
     {
          x1 = (-b + sqrt((b^2) - (4*a*c))) / (2* a)
          x2 = (-b - sqrt((b^2) - (4*a*c))) / (2* a)
          print
          if (x1 == x2)   # Fetches exactly one real root
          {
               cat("\n","One Real Root: ", x1,"\n")
          }else           # Fetches exactly two real number roots
          {
               cat("\n","Two Real Roots x1: ",x1," and x2: ",x2,"\n")
               
          } 
          
     }else     # Fetches complex(imaginary) number roots
     {
          cat("\n","x1 and x2 are Imaginary Roots!")
          x1 = (-b + sqrt(as.complex((b^2) - (4*a*c)))) / (2* a)
          x2 = (-b - sqrt(as.complex((b^2) - (4*a*c)))) / (2* a)
          print
          cat("\n","Two imaginary Roots x1: ",x1," and x2: ",x2,"\n")
          
     }
     
}

quadrootx(1,-10,5)
quadrootx(1,-8,15)
quadrootx(1,4,4)
quadrootx(1,-4,4)
quadrootx(2,-6,5)
