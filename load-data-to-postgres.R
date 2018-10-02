

source("utils.R")



#### FEC contributions

# Individual data

individual_data <- fread("data/CampaignFin18/indivs18.txt",
                         sep = ",",
                         quote = "|")
individual_column_names <- c("cycle", "fec_trans_id", "contributor_id", "contributor_name",
                             "recipient_id", "organization_name", "ult_org", "real_code",
                             "date", "amount", "street", "city", "state", "zip", "recipient_code",
                             "type", "committee_id", "other_id", "gender", "microfilm",
                             "occupation", "employer", "source")
colnames(individual_data) <- individual_column_names

# individual_data$date <- mdy(individual_data$date)
individual_data$cycle <- as.numeric(individual_data$cycle)


