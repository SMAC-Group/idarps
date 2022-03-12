# Libraries
library(ggplot2)
library(MASS)
library(colorspace)

# Load data
dat = read.csv("data-raw/codex.csv")

# Create comorbidities
comorE = grepl("E", dat$Comorb) # sum = 5
comorP = grepl("P", dat$Comorb) # sum = 6
comorV = grepl("V", dat$Comorb) # sum = 10
comorC = grepl("C", dat$Comorb) # sum = 16
comorX = grepl("X", dat$Comorb) # sum = 2
comorN = grepl("N", dat$Comorb) # sum = 3
comorO = grepl("O", dat$Comorb) # sum = 1
comorZ = grepl("Z", dat$Comorb) # sum = 1
comorR = grepl("R", dat$Comorb) # sum = 5
comorH = grepl("H", dat$Comorb) # sum = 1
comorD = grepl("D", dat$Comorb) # sum = 2

# Add to original data
dat$comorE = as.numeric(comorE)
dat$comorP = as.numeric(comorP)
dat$comorV = as.numeric(comorV)
dat$comorC = as.numeric(comorC)
dat$comorR = as.numeric(comorR)

# Fix names
names(dat)[5] = "Weight"
names(dat)[6] = "Number_doses"
names(dat)[11] = "Lenght_hospital"
names(dat)[12] = "Lenght_intermed"

# Check table 1
# Femal normal weight
mean(dat$Age[(dat$Gender == 1) & (dat$BMI > 30)])

# Set NA to 0
dat$T1.2[is.na(dat$T1.2)] = 0

# Remove unused variable
dat = dat[, !(names(dat) %in% "Comorb")]

dat$obese = dat$BMI > 30


dat
dat2 = janitor::clean_names(dat)
dat2
dat2$obese = ifelse(dat2$obese, 1, 0)
dat2
codex = dat2





save(codex, file = "data/codex.RData")

