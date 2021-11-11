
rm(list = ls())

setwd("~/Documents/GitHub/nutrition")
testo = read_excel("data/New2020_Testosterone_LH_Cortisol_ACTH_CRH 2.xlsx")

n = length(testo$`Animal No.`)

set.seed(1)

# Animal ID
Animal_ID = 1:n

# Groups
nom = testo$Group
nom[nom == "PR" | nom == "WR" | nom == "PB" | nom == "WB" | nom == "C1" | nom == "C2"] = "NC"
nom[nom == "PC" | nom == "WC"] = "C"

index_to_flip = sample(which(nom == "NC"), 10)
nom[index_to_flip] = rep("C", 10)

length(which(nom == "NC"))
length(which(nom == "C"))

nom

# Gender

gender = rbinom(n, 1, 0.5) # 1:female 0:male

# Urine Cortisol

old_urine_cortisol = testo$`Urine Cortisol (pg/mg creatinine`

mu = mean(old_urine_cortisol, na.rm = T)
sigma2 = var(old_urine_cortisol, na.rm = T)

new_urine_cortisol = rep(NA, n)

for (i in 1:n) {
  tmp = old_urine_cortisol[i]
  if(!is.na(tmp)){
    new_urine_cortisol[i] = tmp + rnorm(1, mean = 0, sd = 200)
  }else{
    new_urine_cortisol[i] = mu + rnorm(1, mean = 0, sd = 200)
  }
  
  while(new_urine_cortisol[i] <= 0){
    new_urine_cortisol[i] = new_urine_cortisol[i] + rnorm(1, mean = 0, sd = 200)
  }
}

old_urine_cortisol
new_urine_cortisol


# ACTH

old_acth = testo$`Serum ACTH (pg/mL)`

mu = mean(old_acth, na.rm = T)
sigma2 = var(old_acth, na.rm = T)

new_acth = rep(NA, n)

for (i in 1:n) {
  tmp = old_acth[i]
  if(!is.na(tmp)){
    new_acth[i] = tmp + rnorm(1, mean = 0, sd = 200)
  }else{
    new_acth[i] = mu + rnorm(1, mean = 0, sd = 200)
  }
  
  while (new_acth[i] <= 0) {
    new_acth[i] = new_acth[i] + rnorm(1, mean = 0, sd = 200)
  }
}

old_acth
new_acth


# CRH

old_crh = testo$`Serum CRH (pg/mL)`

mu = mean(old_crh, na.rm = T)
sigma2 = var(old_crh, na.rm = T)

new_crh = rep(NA, n)

for (i in 1:n) {
  tmp = old_crh[i]
  if(!is.na(tmp)){
    new_crh[i] = tmp + rnorm(1, mean = 0, sd = 200)
  }else{
    new_crh[i] = mu + rnorm(1, mean = 0, sd = 200)
  }
  
  while (new_crh[i] <= 0) {
    new_crh[i] = new_crh[i] + rnorm(1, mean = 0, sd = 200)
  }
}

old_crh 
new_crh

# Testosterone

old_tes = testo$`Testosterone (ng/mL)`

mu = mean(old_tes, na.rm = T)
sigma2 = var(old_tes, na.rm = T)

new_tes = rep(NA, n)

for (i in 1:n) {
  tmp = old_tes[i]
  if(!is.na(tmp)){
    new_tes[i] = tmp + rnorm(1, mean = 0, sd = 0.2)
  }else{
    new_tes[i] = mu + rnorm(1, mean = 0, sd = 0.2)
  }
  
  while (new_tes[i] <= 0) {
    new_tes[i] = new_tes[i] + rnorm(1, mean = 0, sd = 200)
  }
  
  new_tes[i] = round(new_tes[i],3)
}

old_tes
new_tes


# LH

old_lh = testo$`LH (ng/mL)`

mu = mean(old_lh, na.rm = T)
sigma2 = var(old_lh, na.rm = T)

new_lh = rep(NA, n)

for (i in 1:n) {
  tmp = old_lh[i]
  if(!is.na(tmp)){
    new_lh[i] = tmp + rnorm(1, mean = 0, sd = 0.2)
  }else{
    new_lh[i] = mu + rnorm(1, mean = 0, sd = 0.2)
  }
  
  while (new_lh[i] <= 0) {
    new_lh[i] = new_lh[i] + rnorm(1, mean = 0, sd = 200)
  }
  
  new_lh[i] = round(new_lh[i],3)
}

old_lh
new_lh


# Serum Cortisol

old_serum_cortisol = testo$`Serum Cortisol (ng/ml)`

mu = mean(old_serum_cortisol, na.rm = T)
sigma2 = var(old_serum_cortisol, na.rm = T)

new_serum_cortisol = rep(NA, n)

for (i in 1:n) {
  tmp = old_serum_cortisol[i]
  if(!is.na(tmp)){
    new_serum_cortisol[i] = tmp + rnorm(1, mean = 0, sd = 50)
  }else{
    new_serum_cortisol[i] = mu + rnorm(1, mean = 0, sd = 50)
  }
  
  while (new_serum_cortisol[i] <= 0) {
    new_serum_cortisol[i] = new_serum_cortisol[i] + rnorm(1, mean = 0, sd = 200)
  }
}

old_serum_cortisol
new_serum_cortisol



new_data = data.frame(ID = Animal_ID,
                      group = nom,
                      gender = gender,
                      Urine_Cortisol = new_urine_cortisol,
                      Serum_Cortisol = new_serum_cortisol,
                      Serum_ACTH = new_acth,
                      Serum_CRH = new_crh,
                      Testosterone = new_tes,
                      LH = new_lh)

