managers_data <- read.csv("managers.csv")
managers_data
str

#will read 1st to last row, ABOVE 3 ROWS
new_sample <- managers_data[sample(1:nrow(managers_data),3,replace = FALSE),] 
new_sample
new_sample <- managers_data[sample(1:nrow(managers_data),10,replace = TRUE),]
new_sample
attach(managers_data)
new_data <- managers_data[order(Age),] #other way you could have written [order managers_data$Age]
new_data

new_data <- managers_data[order(Gender,Age),]
new_data
write.csv(new_data, "random_sample.csv")

new_data <- subset(managers_data , select = c(5:9))
new_data
