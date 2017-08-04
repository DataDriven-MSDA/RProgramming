Please Note :
===============

The main package CSWeb for the problem statement mentioned below can be found here at
https://github.com/DataDriven-MSDA/RProgramming/edit/master/CSWeb/

On running the tests, the verbose shows the request /response headers.

The request header shows the custom header (customheader_Caller) and its value.
This can also be verified through the unit tests from testthat tests

The response header has the Date, which shows the execution time , this is the same for the same URL called more than once in the same R session. Can be verified by either running the tests from testthat devtools::test() from the root of the package directory where package files installed As Well As running the test cases individually.

The test cases also determine the list object obtained for JSON type URL .

Note : 
1. I have also classified for application/xml , text/xml to return data frame as response content
2. the return value of the function is a list of (requested URL, request header, response content (text /list/dataframe for text/JSON/XML respectively) , response header)
  I returned such so that the problem solution could be verified and tested with test cases.
  
  
  Problem Statement As Provided :
  ===================================
  Hey Kumudini, 
  Credit Suisse asked us to pass along a coding test for you to complete.  Please see below and complete ASAP. 

Thanks,

Jessica
 

Goal: Create an R package (you pick the name) that has the following functionality:

- Has a  getData function that takes the URL as a parameter, appends a custom header(“customheader”:”CS) into the http request, makes the http call, and returns the text representation of the response body..

- If the response is of type JSON (for example, by calling http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test),  the response should be transformed so that it the function returns a list object.

- Includes a caching mechanism for the duration of the R session. For example, if I call getData(‘http://www.cnn.com’) twice in one session, HTTP call should be made by R only the first time.  If I call  getData(‘http://www.cnn.com’) again, the response should be retrieved and shown from a cache, rather than the HTTP call being made again.

- Includes a few unit test cases through Hadley Wickham’s testthat R package.

Notes:

- You’re welcome to utilize existing libraries to implement some of this functionality.

- Upload the final output to an public repository like GitHub, and share the link.

Let me know if you have any questions.
