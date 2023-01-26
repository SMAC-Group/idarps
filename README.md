<p align="center">
<img src="static/logo_data_analytics.png" align="center" width="450px"/>
</p>

# `idarps`
Package for class "Modelling and Data Analysis for Pharmaceutical Sciences" (`idarps`, which stands for Introduction to Data Analytics with `R` for Pharmaceutical Science)

# Installation
You can install `idarps` from github with:

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
