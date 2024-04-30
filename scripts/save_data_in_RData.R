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
# load("data-raw/data_covid_europe_spatial.rda")
# library(idar)
# data("data_covid_europe_spatial")
# library(dplyr)
# data_covid_europe_spatial = data_covid_europe_spatial[data_covid_europe_spatial$admin=="Switzerland", ]
# data_covid_europe_spatial = data_covid_europe_spatial %>% filter(admin=="Switzerland")
save(data_covid_europe_spatial, file = "data/data_covid_europe_spatial.RData")
library(idar)
data_covid_switzerland_spatial = data_covid_europe_spatial
save(data_covid_switzerland_spatial, file = "data/data_covid_switzerland_spatial.RData")




# HP13Cbicarbonate
HP13Cbicarbonate = read.csv("data-raw/comment.csv")
HP13Cbicarbonate = HP13Cbicarbonate %>% select(-X)
save(HP13Cbicarbonate, file = "data/HP13Cbicarbonate.RData")


# load snoring
library(magrittr)
snoring_0  = read.csv("data-raw/ronfle_csv.csv")
colnames(snoring_0)
# rename columns
colnames(snoring_0) = c("age", "weight", "height", "alcohol", "sex", "snore", "smoke"
)
#reorder
snoring_1 = snoring_0[, c("sex", "age", "height", "weight", "smoke", "alcohol", "snore"
)]
snoring_1
snoring = snoring_1
save(snoring, file = "data/snoring.RData")


# load fev

fev_0  = read.csv("data-raw/volexp_csv.csv")
# height in cm
fev_0$height = fev_0$ht * 2.54
fev_1 = fev_0 %>% dplyr::select(-c(ht))
boxplot(fev_1$height)
fev_1
fev = fev_1
save(fev, file = "data/fev.RData")

# diabete pakistan
load("data-raw/df_diabete.rda")
diabetes = df
save(diabetes, file = "data/diabetes.RData")

# simulated kuwait systol blood pressure
rm(list=ls())
load("data-raw/df_systol.rda")
kuwait_bp = df_systol
save(kuwait_bp, file ="data/kuwait_bp.rda")




#
