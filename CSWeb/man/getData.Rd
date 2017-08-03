\name{getData}
\alias{getData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Gets data from the URL specified}
\description{
The function getData , accepts a URL as input parameter and retrieves the content with the web call / cache if called more than once in the same R session. The function returns a list object for JSON response or a text representation of the response otherwise.}
\usage{
getData(path)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{path}{
%%     ~~Describe \code{path} here~~
}
}
\details{
The getData() uses the environment to set cache variable that maintains the URL call records for the R session
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Kumudini Bhave
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (path)
{
    url <- path
    calluser <- Sys.info()[["user"]]
    if (exists(url, envir = cacheEnv)) {
        resp <- (get(url, envir = cacheEnv, verbose()))
    }
    else {
        resp <- GET(url, add_headers(customHeader_Caller = calluser),
            verbose())
        assign(url, resp, envir = cacheEnv)
    }
    reqheader <- (resp$request)$headers
    respheader <- resp$headers
    if (resp$status_code == 200) {
        if (http_type(resp) == "application/json") {
            resp <- fromJSON(content(resp, type = "text"))
        }
        else if (http_type(resp) == "application/xml" | http_type(resp) ==
            "text/xml") {
            resp <- xmlParse(content(resp, "text"))
        }
        else if (http_type(resp) != "application/json") {
            resp <- content(resp, "text")
        }
    }
    else if (resp$status_code != 200) {
        stop_for_status(resp)
    }
    return(list(request_url = url, request_header = reqheader,
        response_content = resp, response_header = respheader))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
