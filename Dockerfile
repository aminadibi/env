FROM deepnote/python:3.10

RUN apt-get update
RUN apt-get install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu jammy-cran40/'
RUN add-apt-repository ppa:c2d4u.team/c2d4u4.0+
RUN apt-get update
RUN apt-get install -y r-base 
RUN apt-get install -y r-base-dev
RUN apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev
RUN R -e 'install.packages("tidyverse")'
# FROM rocker/tidyverse:latest
# Install Jupyter
#RUN /rocker_scripts/install_jupyter.sh
#RUN pip3 install numpy
#RUN pip3 install pandas
#RUN R -e 'install.packages("predtools")'
#RUN R -e 'install.packages("tidymodels")'
