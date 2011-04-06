\name{mainz}
\alias{mainz}
\docType{data}
\title{Gene expression, annotations and clinical data from Schmidt et al. 2008}
\description{
This dataset contains the gene expression, annotations and clinical data as published in Schmidt et al. 2008.
}
\usage{data(mainz)}
\format{
  ExpressionSet with 22283 features and 200 samples, containing:
  \itemize{
    \item \code{exprs(mainz)}: Matrix containing gene expressions as measured by Affymetrix hgu133a technology (single-channel, oligonucleotides).
    \item \code{fData(mainz)}: AnnotatedDataFrame containing annotations of Affy microarray platform hgu133a.
    \item \code{pData(mainz)}: AnnotatedDataFrame containing Clinical information of the breast cancer patients whose tumors were hybridized.
    \item \code{experimentalData(mainz)}: MIAME object containing information about the dataset.
    \item \code{annotation(mainz)}: Name of the affy chip.
  }
}
\details{
  This dataset represents the study published by Schmidt et al. 2008.
\itemize{
\item \code{Abstract}: Estrogen receptor (ER) expression and proliferative activity are established prognostic factors in breast cancer. In a search for additional prognostic motifs, we analyzed the gene expression patterns of 200 tumors of patients who were not treated by systemic therapy after surgery using a discovery approach. After performing hierarchical cluster analysis, we identified coregulated genes related to the biological process of proliferation, steroid hormone receptor expression, as well as B-cell and T-cell infiltration. We calculated metagenes as a surrogate for all genes contained within a particular cluster and visualized the relative expression in relation to time to metastasis with principal component analysis. Distinct patterns led to the hypothesis of a prognostic role of the immune system in tumors with high expression of proliferation-associated genes. In multivariate Cox regression analysis, the proliferation metagene showed a significant association with metastasis-free survival of the whole discovery cohort [hazard ratio (HR), 2.20; 95\% confidence interval (95\% CI), 1.40-3.46]. The B-cell metagene showed additional independent prognostic information in carcinomas with high proliferative activity (HR, 0.66; 95\% CI, 0.46-0.97). A prognostic influence of the B-cell metagene was independently confirmed by multivariate analysis in a first validation cohort enriched for high-grade tumors (n = 286; HR, 0.78; 95\% CI, 0.62-0.98) and a second validation cohort enriched for younger patients (n = 302; HR, 0.83; 95\% CI, 0.7-0.97). Thus, we could show in three cohorts of untreated, node-negative breast cancer patients that the humoral immune system plays a pivotal role in metastasis-free survival of carcinomas of the breast.
} 
}
\source{
\url{http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE11121}
}
\references{
Marcus Schmidt and Daniel Boehm and Christian von Toerne and Eric Steiner and Alexander Puhl and Heryk Pilch and Hans-Anton Lehr and Jan G. Hengstler and Hainz Koelbl and Mathias Gehrmann (2008)"The Humoral Immune System Has a Key Prognostic Impact in Node-Negative Breast Cancer", \emph{Cancer Research}, \bold{68}(13):5405-5413
}
\examples{
## load Biobase package
library(Biobase)
## load the dataset
data(mainz)
## show the first 5 rows and columns of the expression data
exprs(mainz)[1:5,1:5]
## show the first 6 rows of the phenotype data
head(pData(mainz))
## show first 20 feature names
featureNames(mainz)[1:20]
## show the experiment data summary
experimentData(mainz)
## show the used platform
annotation(mainz)
## show the abstract for this dataset
abstract(mainz)
}
\keyword{datasets}