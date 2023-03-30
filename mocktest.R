ufo_data <- read.csv("ufo.csv") #Loading dataset
str(ufo_data)   #tells structure
head(ufo_data, 15) #grabs first 15 rows
nrow(ufo_data)  #number of rows in dataset

colnames(ufo_data)[1] <- "date" #renamed column datetime to date
date <- as.Date(ufo_data$date) #changing date from character to date
class(date)
str(ufo_data)

####How to change date format###

names(ufo_data) #display column names of df
colnames(ufo_data)[6] <- "DurationSeconds" #renamed three columns
colnames(ufo_data)[7] <- "DurationHrsMins"
colnames(ufo_data)[9] <- "DatePosted"
str(ufo_data)

latitude <- as.numeric(latitude) #changing character to numeric
typeof(latitude)

library(mice)
md.pattern(ufo_data)

#subset function for filtering
ufo_gb_disk <- subset(ufo_data, country == "gb" & shape == "disk" ,  select =c("country","shape"))
ufo_gb_disk
nrow(ufo_gb_disk)
