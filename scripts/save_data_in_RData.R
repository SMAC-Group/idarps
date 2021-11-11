# save file in data as .RData file

diet <- read_csv("data_raw/diet.csv")
save(diet, file = "data/diet.RData")

