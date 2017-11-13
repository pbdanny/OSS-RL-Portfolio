# Data manipulations
# Highlight and run command below do load project without munging.
# This is useful when debugging data manipulation code.
# rm(list = ls()); library(ProjectTemplate); load.project(list(munging=FALSE))

df <- read_tsv(file.path(getwd(), 'raw-data', 'OSS_RL_Jan_Sep17.txt.zip'), 
               guess_max = 5000)
colnames(df) <- make.names(tolower(colnames(df)), 
                           unique = TRUE,
                           allow_ = TRUE)

reason_desc <- read_tsv(file.path(getwd(), 'raw-data', 'reason_desc.txt'))
colnames(reason_desc) <- make.names(tolower(colnames(reason_desc)), 
                                    unique = TRUE,
                                    allow_ = TRUE)