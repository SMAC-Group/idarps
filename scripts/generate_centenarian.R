rm(list=ls())
library(idarps)
data("PeruvianBP")
help("PeruvianBP")
df = PeruvianBP

# install.packages("dplyr")
require(dplyr)

# subset
colnames(df)
sigma_mat  = cov(df%>% select(Age, Years, Weight, Height, Chin, Forearm, Calf, Pulse))
mu_vec = colMeans(df%>% select(Age, Years, Weight, Height, Chin, Forearm, Calf, Pulse))

################
# NOTE: it seems that BP decreases with aging, but 100+ years old people from some regions tend to have higher BP.. let's recreate this
# https://www.metabolismjournal.com/action/showPdf?pii=S0026-0495%2802%2947555-5
################

mu_vec[1] = 110
sigma_mat[1,1] = sigma_mat[1,1]/10

mu_vec[3] = mu_vec[3]*0.25
mu_vec[4] = mu_vec[4]*0.9

n = 50
set.seed(12345)
X_new  = mvtnorm::rmvnorm(n = n, mean = mu_vec, sigma = sigma_mat)

# round
X_new[,"Age"] = round(X_new[, "Age"])
X_new[, "Years"] = round(X_new[, "Years"])

df_new = as.data.frame(X_new)
df_new$LeftHanded = rbinom(n = n, size = 1, prob = .1)

df_new = df_new %>% select(-Years)

set.seed(12345)
df_new$Weight =round( df_new$Weight + runif(n = n, min = 0, max=40), 2)
df_new$Height =round( df_new$Height, 2)
df_new$Height = df_new$Height + 150
mean(df_new$Weight)
df_new$Weight = df_new$Weight + 25
mean(df_new$Height)

df_new$Chin = 1.5* round( df_new$Chin, 2)
df_new$Forearm =  1.5*  round( df_new$Forearm, 2)
df_new$Calf = 1.5* round( df_new$Calf, 2)
df_new$Pulse = round( df_new$Pulse, 2)
df_new$BMI = df_new$Weight / (df_new$Height/1000)^2


boxplot(df_new$Age)
boxplot(df_new$BMI)
boxplot(df_new$Weight)
boxplot(df_new$Height)

df_centenarians = df_new

###################################

sigma_mat  = cov(df%>% select(Age, Years, Weight, Height, Chin, Forearm, Calf, Pulse))
mu_vec = colMeans(df%>% select(Age, Years, Weight, Height, Chin, Forearm, Calf, Pulse))

mu_vec[1] = 70
mu_vec[3] = mu_vec[3]*0.5
mu_vec[4] = mu_vec[4]*0.95

# n = 25
set.seed(12345)
X_new  = mvtnorm::rmvnorm(n = n, mean = mu_vec, sigma = sigma_mat)

# round
X_new[,"Age"] = round(X_new[, "Age"])
X_new[, "Years"] = round(X_new[, "Years"])

df_new = as.data.frame(X_new)
df_new$LeftHanded = rbinom(n = n, size = 1, prob = .1)

df_new = df_new %>% select(-Years)

set.seed(12345)
df_new$Weight =round( df_new$Weight + runif(n = n, min = 0, max=40), 2)
df_new$Height =round( df_new$Height, 2)
df_new$Height = df_new$Height + 150
mean(df_new$Weight)
df_new$Weight = df_new$Weight + 15
mean(df_new$Height)

df_new$Chin = 1.5* round( df_new$Chin, 2)
df_new$Forearm =  1.5*  round( df_new$Forearm, 2)
df_new$Calf = 1.5* round( df_new$Calf, 2)
df_new$Pulse = round( df_new$Pulse, 2)
df_new$BMI = df_new$Weight / (df_new$Height/1000)^2


#
boxplot(df_new$Age)
boxplot(df_new$BMI)

boxplot(df_new$Weight)
boxplot(df_new$Height)

df_younger = df_new

###############################################

df_centenarians$Centenarian = 1
df_younger$Centenarian = 0
df_new = rbind.data.frame(df_centenarians, df_younger)
df_new = df_new[sample(nrow(df_new)), ]

boxplot(BMI ~ Centenarian, data = df_new)
t.test(BMI ~ Centenarian, data = df_new)

################################################

colnames(df_new)
colnames(df_new)[c(2,3,8)]
df_new = df_new[,-c(2,3,8)]
colnames(df_new)
colnames(df_new)
vec_beta = c(110, -0.2, 0, -0.34, 0, 0, 1.4, 10.6)
names(vec_beta) = c("intercept", colnames(df_new))
vec_beta

# make sure we dont have value too small for the skinfold
boxplot(df_new$Chin)
boxplot(df_new$Forearm)
boxplot(df_new$Calf)

# scale vers le haut
df_new$Chin = df_new$Chin+5
df_new$Forearm = df_new$Forearm+3
df_new$Calf = df_new$Calf+3

# check min value
min(df_new$Chin)
min(df_new$Forearm)
min(df_new$Calf)

# create X matrix
X_mat = dplyr::bind_cols(rep(1,2*n), df_new)
X_mat = as.matrix(X_mat)
set.seed(12345)
y_systol = X_mat %*% vec_beta + rnorm(n = n, sd = 4)
summary(y_systol)
boxplot(y_systol)
range(y_systol)

df_systol = dplyr::bind_cols(df_new, y_systol)
colnames(df_systol)[8] = "Systol"

summary(lm(Systol ~ ., data = df_systol))
vec_beta

# install.packages("janitor")
# library(janitor)
# df_systol = janitor::clean_names(df_systol)
# colnames(df_systol)


# df_centenarians = df_systol[,-c(8:10)]
# colnames(df_centenarians) = c("Age", "Weight", "Height", "Chin", "Forearm", "Calf", "Pulse", "Systol")

JapaneseBP = df_systol

t.test(Systol ~ Centenarian, data = JapaneseBP)
summary(lm(Systol~., data = JapaneseBP))
boxplot(JapaneseBP$Age)
boxplot(JapaneseBP$Chin)
boxplot(JapaneseBP$Forearm)

boxplot(JapaneseBP$Calf)
boxplot(JapaneseBP$Pulse)
boxplot(JapaneseBP$BMI)
min(JapaneseBP$BMI)
table(JapaneseBP$Centenarian)
boxplot(JapaneseBP$Systol)



centenarian = JapaneseBP
colnames(centenarian)
save(centenarian, file = "data/centenarian.rda")
