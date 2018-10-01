
library(RPostgreSQL)
library(tidyverse)
library(data.table)
library(teamcolors)
library(lubridate)
library(ggrepel)
library(DT)
library(rstan)
library(magrittr)

####Loading into the database
drv <- dbDriver('PostgreSQL')
# con <- dbConnect(drv, dbname = 'sammi', port = 5432, host = 'localhost', user = 'kevin')
con <- dbConnect(drv, dbname = 'sammi', port = 5432, host = '192.168.1.71', user="kevin")



