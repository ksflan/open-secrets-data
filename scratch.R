
source("utils.R")

# Remove all "|" characters from the datafile
data_file <- read_lines("data/CampaignFin18/indivs18.txt",
                        skip = 10670000)

individual_data <- fread("data/CampaignFin18/indivs18.txt",
                        sep = ",",
                        quote = "|",
                        skip = 10000000)

chunks <- 1:(length(data_file)/10000)

test <- read_csv("")

for(line in 1:(length(data_file)/10000 + 1)) {
  data_file_rewrite_chunk <- gsub("\\|", "", data_file[((line-1)*10000+1):(((line-1)*10000+1)+9999)])
  write_lines(data_file_rewrite_chunk,
              paste0("data/CampaignFin18/indiv-rewrite/data-rewrite.csv"),
              append = TRUE)
}

data_file <- gsub("\\|", "", data_file, perl = TRUE)

test <- data_file[1:1000]
gsub("\\|", "", test)



data_temp <- read_csv(paste0("data/CampaignFin18/indiv-rewrite/data-rewrite.csv"),col_names = FALSE)

full_data <- NULL
for(i in 1:(length(data_file)/10000)) {
  data_temp <- read_csv(paste0("data/CampaignFin18/indiv-rewrite/data-", i, ".csv"),col_names = FALSE)
  full_data <- rbind(full_data, data_temp)
}


# Fix column names and types

individual_names <- paste0(final_data$X4, ", ", final_data$X5)
final_data$X4 <- individual_names
final_data$X5 <- NULL

column_names <- c("cycle", "fec_trans_id", "contributor_id", "contributor_name",
                  "recipient_id", "organization_name", "ult_org", "real_code",
                  "date", "amount", "street", "city", "state", "zip", "recipient_code",
                  "type", "committee_id", "other_id", "gender", "microfilm",
                  "occupation", "employer", "source")

colnames(full_data) <- column_names

RPostgreSQL::dbWriteTable()






full_data <- fread("data/CampaignFin18/cands18.txt",
                        sep = ",",
                        quote = "|",
                        stringsAsFactors = FALSE)
candidate_column_names <- c("")





