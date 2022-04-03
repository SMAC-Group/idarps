# save file in data as .RData file
library(readr)
library(dplyr)
library(janitor)


# cortisol
cortisol <- read_csv("data-raw/cortisol.csv")
head(cortisol)
colnames(cortisol)
cortisol = janitor::clean_names(cortisol)
# modif stef
set.seed(189)
cal = 3500 + cortisol$urine_cortisol_pg_mg*0.05 - 1300*as.numeric(cortisol$group == "C") + rnorm(length(cortisol$id), 0, 300)
cortisol$caloric = cal
cortisol = cortisol[,-5]
names(cortisol) = c("id", "group", "gender", "cortisol", "acth", "crh", "testosterone", "lh", "caloric")
save(cortisol, file = "data/cortisol.RData")

# bronchitis
bronchitis <- read_csv("data-raw/bronchitis.csv")
save(bronchitis, file = "data/bronchitis.RData")



# covid
covid <- read_csv("data-raw/covid.csv")
covid = covid %>% rename(icu = ic)
covid$sex
covid$sex = ifelse(covid$sex  == 1, "men", "women")
covid$sex = as.factor(covid$sex)
save(covid, file = "data/covid.RData")

# diet
diet <- read_csv("data-raw/diet.csv")
colnames(diet)
save(diet, file = "data/diet.RData")

# pharmacy
pharmacy <- read_csv("data-raw/pharmacy.csv")
pharmacy = pharmacy[,-1]
save(pharmacy, file = "data/pharmacy.RData")

# readings
reading <- read_csv("data-raw/reading.csv")
colnames(reading)[1] = "id"
save(reading, file = "data/reading.RData")

# students
students <- read_csv("data-raw/students.csv")
colnames(students)
save(students, file = "data/students.RData")

# data_covid_europe_spatial
load("data-raw/data_covid_europe_spatial.rda")
save(data_covid_europe_spatial, file = "data/data_covid_europe_spatial.RData")
