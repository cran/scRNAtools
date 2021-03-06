\name{scRNAtools_cor_map_r}
\alias{scRNAtools_cor_map_r}
\title{Present correlation index in figure}
\description{Correlation analysis with correlation index of interested gene set or differentially expressed gene set.}
\usage{
scRNAtools_cor_map_r(exam1, types_all, type, methods)
}
\arguments{
  \item{exam1}{
scRNA sequencing data of several genes and cells.
}
  \item{types_all}{
Cell names of each type.
}
  \item{type}{
Cell type.
}
  \item{methods}{
correlation methods including "pearson", "kendall" and "spearman".
}
}
\details{
Return the correlation index of each two genes.
}
\author{Qian Yang}
\examples{
data(exam1)
data(types_all)
type<-"Malignant";
methods<-"pearson";##methods = c("pearson", "kendall", "spearman").
pdf(file=file.path(tempdir(), "correlation_num.pdf"))
scRNAtools_cor_map_r(exam1,types_all,type,methods)
dev.off()
}
