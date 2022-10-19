FROM deepnote/python:3.10
RUN echo "deb http://cloud.r-project.org/bin/linux/debian buster-cran40/" | sudo tee -a /etc/apt/sources.list 
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'
RUN sudo apt update 
RUN sudo apt install -y -t buster-cran40 r-base libxml2-dev libcurl4-openssl-dev libssl-dev libmariadbclient-dev
RUN sudo R -e "install.packages(c('IRkernel', 'tidyverse', 'tidymodels', 'remotes'), repos='http://cran.rstudio.com/', dependencies=TRUE)"
RUN R -e "IRkernel::installspec()"
ENV DEFAULT_KERNEL_NAME "ir"
