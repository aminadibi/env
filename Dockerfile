FROM deepnote/ir-with-libs:4.2.0
RUN sudo R -e "install.packages(c('dbplyr', 'RSQLite'), repos='http://cran.rstudio.com/', dependencies=TRUE)"
