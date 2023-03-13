<p align="center">
<img src="static/logo_data_analytics.png" align="center" width="450px"/>
</p>


<!-- badges: start -->
![example workflow](https://github.com/SMAC-Group/idarps/actions/workflows/R-CMD-check.yaml/badge.svg)
[![CRAN status](https://www.r-pkg.org/badges/version/idarps)](https://CRAN.R-project.org/package=idarps)
![](https://img.shields.io/github/last-commit/SMAC-Group/idarps) 
[<img src="https://s-a.github.io/license/img/agpl-3.0.svg" />](https://s-a.github.io/license/?license=agpl-3.0&fullname=Stephan%20Ahlf&year=2015&profile=https://github.com/s-a&projectUrl=https://github.com/s-a/license&projectName=License%20Demo "")
[![CRAN RStudio mirror
downloads](http://cranlogs.r-pkg.org/badges/idarps)](https://www.r-pkg.org/pkg/idarps)
[![CRAN RStudio mirror
downloads](https://cranlogs.r-pkg.org/badges/grand-total/idarps)](https://www.r-pkg.org/pkg/idarps)
<!-- badges: end -->


# `idarps`
Package for class "Modelling and Data Analysis for Pharmaceutical Sciences" (`idarps`, which stands for Introduction to Data Analytics with `R` for Pharmaceutical Sciences)

# Installation

The `idarps` package is available on both CRAN and GitHub. The CRAN version is considered stable while the GitHub version is subject to modifications/updates which may lead to installation problems or broken functions. You can install the stable version of the `idarps` package with:

## Installation from GitHub
```R
install.packages("idarps")
``` 


## Installation from CRAN
For users who are interested in having the latest developments, the GitHub version is ideal although more dependencies are required to run a stable version of the package.

You can install `idarps` from GitHub with:

```
# install.packages("devtools")
devtools::install_github("SMAC-Group/idarps")
```

# Loading data
`idarps` proposes various datasets to work with. Namely, 

- `bronchitis`
- `codex`
- `cortisol`
- `covid`
- `data_covid_switzerland`
- `diet`
- `fev`
- `HP13Cbicarbonate`
- `pharmacy`
- `reading`
- `snoring`
- `students`

To load a dataset, assuming that `idarps` is loaded in your environment (`library(idarps)`), you can use:

```
data(dataset_name)
```

You can obtain the description of the dataset with:
```
help(dataset_name)
```
