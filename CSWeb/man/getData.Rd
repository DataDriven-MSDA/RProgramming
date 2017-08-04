\name{getData(path)}
\alias{getData}
\title{Get Data From The URL Specified}
\description{
The function getData , accepts a URL as input parameter and retrieves the content with the web call / cache (from cacheEnv )if called more than once in the same R session. The function returns a list object for JSON response or a text representation of the response otherwise.}
\usage{
getData(path)
}
\arguments{
  \item{path}{
Any web URL
}
}
\details{
The getData() uses the environment to set cache variable cacheEnv that maintains the URL call records for the R session
}
\value{
list , if http response is of application/json
dataframe, if http response is of application/xml or text/xml
text, for response is of any other content type
}
\references{
cacheEnv : global variable set in environment as cache for visited URL responses for the session}
\author{
Kumudini Bhave
}
\seealso{
\link{cacheEnv}
\link{CSWeb}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently called as
responsefromfunction <- getData("www.cnn.com")
}
\keyword{ Web Scrape }
