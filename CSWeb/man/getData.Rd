\name{getData}
\alias{getData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Gets data from the URL specified}
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
The getData() uses the environment to set cache variable cacheEnv that maintains the URL call records for the R session
}
\value{
list , if http response is of application/json
dataframe, if http response is of application/xml or text/xml
text, for response is of any other content type
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

## The function is currently called as
response <- getData("www.cnn.com")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
