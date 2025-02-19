### Combining data from keyword searches on Climate Action Data Trust database and removing duplicate projects###
### Zoë Lieb
### 14 Feb 2025
### Carbon Cross Borders Project

# read in packages
library(tidyverse)
library(readr)

#assign each keyword csv

forestry_key <- read.csv('data/forestry-CAD-2025-02-05.csv')
forest_regeneration_key <- read.csv('data/forest-regeneration-CAD-2025-02-05.csv')
forest_key <- read.csv('data/forest-CAD-2025-02-05.csv')
reforest_key <- read.csv('data/reforest-CAD-2025-02-05.csv')
reforestation_key <-  read.csv('data/reforestation-CAD-2025-02-05.csv')
restoration_key <- read.csv('data/restoration-2025-02-05.csv')
tree_key <- read.csv('data/tree-CAD-2025-02-05.csv')

#combine all rows into one dataframe

CADT_data <- rbind(forest_key, forest_regeneration_key, forestry_key, reforest_key, reforestation_key, restoration_key, tree_key)

# only keep distinct rows

CADT_data_unique <- distinct(CADT_data)

