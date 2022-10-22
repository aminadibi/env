FROM deepnote/ir-with-libs:4.2.0
RUN sudo R -e "install.packages(c('tidymodels', 'remotes', 'ggthemes', 'naniar', 'glmnet', 'ranger', 'xgboost', 'dbarts', 'kernlab'), repos='http://cran.rstudio.com/', dependencies=TRUE)"
