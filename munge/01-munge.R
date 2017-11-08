rl_os <- df %>%
    filter(channel == 'OSS')
cache('df'); rm(df)