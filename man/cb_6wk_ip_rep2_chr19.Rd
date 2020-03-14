\name{cb_6wk_ip_rep2_chr19}
\alias{cb_6wk_ip_rep2_chr19}
\docType{data}
\title{
cb_6wk_ip_rep2_chr19.
}
\description{
A list of GRanges contaning the genomic location of each sequencing read from MeRIP-seq experiment.
}
\usage{data("cb_6wk_ip_rep2_chr19")}
\format{
The data provides at least the chromosome number (\code{seqnames}), reads direction (\code{strand}), the start and end position (\code{ranges}) of each sequencing read from MeRIP-seq experiment. Note that this data only include chromosome 1 and 19 from the mouse genome "mm9".
  \describe{
    \item{\code{seqnames}}{Chromosome number: chr1 or chr19.}
    \item{\code{strand}}{Reads direction: "+", "-", "*".}
    \item{\code{...}}{}
  }
}

\examples{
data(cb_6wk_ip_rep2_chr19)
}
\keyword{datasets}
