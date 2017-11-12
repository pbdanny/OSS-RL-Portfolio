rl_os <- df %>%
    filter(channel == 'OSS') %>%
    mutate(month = paste0('y', month))

cache('df'); rm(df)