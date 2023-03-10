\docType{class}
\name{fcts}
\alias{fcts}
\title{S4 class \emph{fcts}}
\description{
A S4 class containing additional functions which can be used for calculating derivatives with \code{\link{d}()}. \cr
To create a class the function \emph{fcts()} should be used. \cr
Adding functions is only possible \emph{via} the function \emph{add_fct}.
}
\details{
The following functions are already supported: \cr
sin, sinh, asin, cos, cosh, acos, tan, tanh, atan, exp, log, sqrt, c, vector, numeric, rep and matrix. \cr
Notably, for the functions: c, vector, numeric, rep and matrix the function is ignored during differentiation.
}
\section{Slots}{

\describe{
\item{\code{funs}}{A list containing the specified functions. This slot should not be accessed and is used only internally.}
}}

\examples{
library(dfdr)
# Initialize list
lst <- dfdr::fcts()

# The function which should be added
f <- function(x) x^2
# The dervative function of f
f_deriv <- function(x) 2*x

# add new entry to list
lst <- fcts_add_fct(lst, f, f_deriv)

g <- function(z) f(z)
df <- d(g, z, lst)
df
}
\seealso{
\code{\link{d}()}
}
