source("renv/activate.R")
options(repos = c(
  MPN = "https://mpn.metworx.com/snapshots/stable/2020-08-15/", 
  # a value must be set to CRAN or R will complain, so we'll point both to MPN
  CRAN = "https://mpn.metworx.com/snapshots/stable/2020-08-15/"
  # set some rbabylon opinionated defaults, these won't impact even if you don't use rbabylon
  ),
  'rbabylon.model_directory' = normalizePath("model", mustWork = TRUE),
  'rbabylon.bbi_exe_path' = '/data/apps/bbi'
)
if(interactive()){
  message("repos set to: \n\t", paste0(unique(getOption('repos')), collapse = "\n\t"))
  message("library paths set to: \n\t", paste0(.libPaths(), collapse = "\n\t"))

}
