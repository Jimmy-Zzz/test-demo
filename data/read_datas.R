library(tidyverse)
library(showtext)
library(readxl)

# Get the path to the bulk data
files = fs::dir_ls("data/", glob = "*.xlsx")

# Batch data reading and synthesize a data file
df = map_dfr(files, read_xlsx)
