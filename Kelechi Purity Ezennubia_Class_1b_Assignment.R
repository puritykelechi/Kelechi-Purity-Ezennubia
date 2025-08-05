data = read.csv(file.choose())
View(data)
str(data)

# convert gender into factor
data$gender_fac2 = as.factor(data$gender)
class(data$gender_fac2)
# convert factor into numeric factor
data$gender_num2 = ifelse(data$gender_fac2 == "Female", 1, 0)
class(data$gender_num2)

#convert smoker to factor
data$smoker_fac2 = as.factor(data$smoker)
class(data$smoker_fac2)
#convert factor into numeric factor
data$smoker_num2 = ifelse(data$smoker_fac2 == "Yes", 1, 0)
class(data$smoker_num2)

#convert bmi to integer
data$bmi_int2 = as.integer(data$bmi)
class(data$bmi_int2)


getwd()



write.csv(data, file = "results/patient_data.csv")


save.image(file = "full_workspace.RData")
save(data$gender,data$bmi,data$smoker, file = "full_workspace.RData")
