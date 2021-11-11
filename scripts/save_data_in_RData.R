# save file in data as .RData file

bronchitis <- read_csv("data-raw/bronchitis.csv")
save(bronchitis, file = "data/bronchitis.RData")

cortisol <- read_csv("data-raw/cortisol.csv")
save(cortisol, file = "data/cortisol.RData")

covid <- read_csv("data-raw/covid.csv")
save(covid, file = "data/covid.RData")

diet <- read_csv("data-raw/diet.csv")
save(diet, file = "data/diet.RData")

pharmacy <- read_csv("data-raw/pharmacy.csv")
save(pharmacy, file = "data/pharmacy.RData")

reading <- read_csv("data-raw/reading.csv")
save(reading, file = "data/reading.RData")

students <- read_csv("data-raw/students.csv")
save(students, file = "data/students.RData")
