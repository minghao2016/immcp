% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/score_network.R
\name{score_network}
\alias{score_network}
\title{score_network}
\usage{
score_network(Tar, DNet, n = 100, two_tailed = TRUE)
}
\arguments{
\item{Tar}{A list containing drug target.}

\item{DNet}{A data frame of disease network containing two columns.}

\item{n}{The number of times random permutation sampling.}

\item{two_tailed}{a logical: select a two-tailed p-value.}
}
\value{
ScoreResultNet object
}
\description{
Calculate the network score
}
\examples{

  data("drugSample")
  res <- score_network(Tar = drugSample$herb_target, DNet = drugSample$disease_network)
  res <- get_result(res)
}
\author{
Yuanlong Hu
}
