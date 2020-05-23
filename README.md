
# immcp: Candidate prescriptions discovery based on pathway fingerprint



This package implements the method proposed by *Ye* for pathway fingerprint. Candidate herbal prescriptions can be discovered based on the pathway fingerprint similarity between disease and prescriptions.

## Installation

You can install it from GitHub using the devtools package :

``` r
install.packages("devtools")
library(devtools)
install_github("YuanlongHu/immcp")
```

-----
## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(immcp)
data("drugSample")
FP <- extrFP(disease_biomarker = drugSample$disease_biomarker,
               drug_target = drugSample$herb_target,
               geneset = "ImmGenTop150")
res <- score_fp(FP, n=100)
plot_density(res, drug="BAN_XIA_XIE_XIN_TANG")

res1 = get_result(res)
```

