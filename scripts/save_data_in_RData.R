# save file in data as .RData file
library(readr)
library(dplyr)
library(janitor)

# bronchitis
bronchitis <- read_csv("data-raw/bronchitis.csv")
save(bronchitis, file = "data/bronchitis.RData")

# cortisol
cortisol <- read_csv("data-raw/cortisol.csv")
head(cortisol)
colnames(cortisol)
cortisol = janitor::clean_names(cortisol)
save(cortisol, file = "data/cortisol.RData")

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
