% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transforms.R
\docType{data}
\name{ssqrt_trans}
\alias{ssqrt_trans}
\alias{pseudolog10_trans}
\title{Various scale transforms.}
\format{An object of class \code{trans} of length 6.}
\usage{
ssqrt_trans

pseudolog10_trans
}
\value{
A scale transformation object.
}
\description{
Various scale transformations.
}
\details{
The available transforms:
\itemize{
\item \code{ssqrt_trans} a signed square root transform appropriate for
negative or positive numbers.
\item \code{pseudolog10_trans} an \code{asinh} transformation, which is like
a logarithm, but appropriate for negative or positive numbers.  This
transformation was taken from the Win Vector blog, 
\url{http://www.win-vector.com/blog/2012/03/modeling-trick-the-signed-pseudo-logarithm/}.
}
}
\examples{
set.seed(1234)
ggplot(data.frame(x=rnorm(100),y=runif(100)),aes(x=x,y=y)) + 
  geom_point() + 
  scale_x_continuous(trans=ssqrt_trans)

set.seed(1234)
ggplot(data.frame(x=rnorm(100),y=runif(100)),aes(x=x,y=y)) + 
  geom_point() + 
  scale_x_continuous(trans=pseudolog10_trans)

}
\seealso{
\code{\link[scales]{trans_new}}.

\url{http://www.win-vector.com/blog/2012/03/modeling-trick-the-signed-pseudo-logarithm/}
}
\author{
Steven E. Pav \email{shabbychef@gmail.com}
}
\keyword{datasets}
\keyword{plotting}
