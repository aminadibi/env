FROM deepnote/python:3.10

RUN echo "deb http://cloud.r-project.org/bin/linux/debian buster-cran40/" | sudo tee -a /etc/apt/sources.list && \
    sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' && \
    sudo apt update && \
    sudo apt install -y -t buster-cran40 r-base libxml2-dev libcurl4-openssl-dev libssl-dev libmariadbclient-dev

RUN sudo R -e "install.packages(c('IRkernel', 'tidyverse', 'tidymodels', 'remotes'), repos='http://cran.rstudio.com/', dependencies=TRUE)"
RUN R -e "IRkernel::installspec()"
RUN sudo usermod -a -G staff jovyan
ENV DEFAULT_KERNEL_NAME "ir"
