FROM rocker/tidyverse:latest
RUN R -e 'install.packages("predtools")'
RUN R -e 'install.packages("tidymodels")'
RUN apt-get update
RUN apt-get install python3.6
