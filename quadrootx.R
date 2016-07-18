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
