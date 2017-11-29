rm(list = ls()) # optionally refresh workspace
library(ProjectTemplate); load.project()
library(knitr)
library(rmarkdown)

for (mgr_code in unique(rl_os$X1m)) {
    rmarkdown::render("reports/report_mgr.rmd",
        output_file =  paste("report_mgr_", mgr_code, ".html", sep=''), 
        output_dir = 'reports')
}