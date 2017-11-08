# Add alternative data importation commands for files in 
# the data folder that should not be imported using standard data importation rules
df <- read_tsv(file.path(getwd(), 'raw-data', 'OSS_RL_Aug17_Sep17.tsv.zip'), 
               guess_max = 5000)
colnames(df) <- make.names(tolower(colnames(df)), 
                           unique = TRUE,
                           allow_ = TRUE)

reason_desc <- read_tsv(file.path(getwd(), 'raw-data', 'reason_desc.txt'))
colnames(reason_desc) <- make.names(tolower(colnames(reason_desc)), 
                                    unique = TRUE,
                                    allow_ = TRUE)
