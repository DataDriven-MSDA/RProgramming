#' @include setEnvironment.R
#' @import httr
#' @importFrom jsonlite fromJSON
#' @import testthat
#' @importFrom XML xmlParse
#' @importFrom XML xmlToDataFrame
#' @import RCurl
#' @export


# getData() function to call web url
#' @param path , the Web API/ URL to access /scrape
#' @return list , if http response is of application/json, dataframe, if http response is of application/xml or text/xml, text, for response is of any other content type
#' @examples
#' response <- getData("www.cnn.com")

getData<- function(path) {


     # Call the GET method with the URL passed as parameter

     # url <- "http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test"
     #url <-"http://forecast.weather.gov/MapClick.php?lat=29.803&lon=-82.411&FcstType=digitalDWML"
      url<- path

      # To pass System Username in Header information as Caller
      calluser <- Sys.info()[["user"]]

      if (exists(url, envir=cacheEnv)){
           resp <- (get(url, envir=cacheEnv, verbose()))
      }
      else
      {
          resp <- GET(url, add_headers(customHeader_Caller = calluser), verbose())
          assign(url, resp, envir=cacheEnv)
      }

     #Extracting request header to return back
     reqheader <- (resp$request)$headers

     #Extracting response header to return back
     respheader<- resp$headers

     # Check for Success and return response
     if(resp$status_code == 200)
     {
          # return response as list for json data, dataframe for XML data  else as text
          if(http_type(resp)=="application/json")
          {
               resp <- fromJSON(content(resp,type="text"))
          }
          else if (http_type(resp) =="application/xml" | http_type(resp) =="text/xml")
          {
               resp <- xmlParse(content(resp, "text"))
               resp <- xmlToDataFrame(resp)
          }
          else if (http_type(resp) !="application/json" & http_type(resp) !="application/xml" & http_type(resp) !="text/xml")
          {
               resp <- content(resp, "text")
          }
     }
     else if(resp$status_code != 200)
     {
          stop_for_status(resp)
     }

     return (list(request_url = url, request_header = reqheader, response_content = resp, response_header = respheader))
}


