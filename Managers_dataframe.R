# WE DID NOT PUT COLUMN FOR MANAGER column AS R put index on its own for dataframe

date_col <- c("10/15/18","01/11/18","10/21/18","10/28/18","05/01/18")
country_col <- c("US","US","IRL", "IRL", "IRL")
gender_col <- c("M","F","F","M","F")
age_col <- c(32,45,25,39,99)
q1_col <- c(5,3,3,3,2)
q2_col <- c(4,5,5,3,2)
q3_col <- c(5,2,5,4,1)
q4_col <- c(5,5,5,NA,2)
q5_col <- c(5,5,2,NA,1)

managers_data <- data.frame(date_col,
                            country_col,
                            gender_col, 
                            age_col,
                            q1_col, 
                            q2_col,
                            q3_col,
                            q4_col,
                            q5_col)

str(managers_data) #tells about the structure of the dataframe

column_names <- c("Date", "Country","Gender","Age","Q1","Q2","Q3","Q5")
#not the name of the vector but a column in vector so can be used as Date here

colnames(managers_data) <- column_names
managers_data

managers_data$Age[managers_data$Age == 99] <- NA
#do something with age variable according to logic inside square brackets
#check age variable where age is 99 and put NA for that value
managers_data
str(managers_data)

managers_data$AgeCat[managers_data$Age <= 25] <- "Young" 
managers_data$AgeCat[managers_data$Age >= 26 & managers_data$Age <=44] <- "Middle aged"
managers_data$AgeCat[managers_data$Age >= 45 ] <- "Elder"
managers_data

#recode agecat so that it is categorical and ordinal  
converted_agecat <- factor(managers_data$AgeCat, order = TRUE, 
                           levels= c("Young", "Middle aged","Elder"))
converted_agecat

managers_data$AgeCat <- converted_agecat
str(managers_data)

#create a new col "summary col" that contains a summary of each row
#cant insert summary_col as it contains NA
managers_data$summary_col <- 
  managers_data$Q1 + 
  managers_data$Q2 + 
  managers_data$Q3+ 
  managers_data$Q4+
  managers_data$Q5

mean_value <- rowMeans(managers_data[5:9])
mean_value
managers_data <- data.frame(managers_data, mean_value)
#create a data frame of managers data, append a new value and assign it to managers_data