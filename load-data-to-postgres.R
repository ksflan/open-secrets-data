

source("utils.R")



#### FEC contributions

# Individual data

individual_data <- fread("data/CampaignFin18/indivs18.txt",
                         sep = ",",
                         quote = "|")
individual_data$date <- mdy(individual_data$date)



