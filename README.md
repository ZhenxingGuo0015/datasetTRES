# datasetTRES
It provides example testing dataset used by TRES (our peak calling tool).

### 1. Installation
From GitHub: 
```{r, eval = FALSE}
install.packages("devtools") # if you have not installed "devtools" package
library(devtools)
install_github("https://github.com/ZhenxingGuo0015/TRES")
```
### 2. data within it
```{r, eval= TRUE, echo = TRUE}
## Use data in the form of GRanges in package "datasetTRES"
library(datasetTRES)
data(cb_6wk_ip_rep1_chr19)
head(cb_6wk_ip_rep1_chr19)
```
