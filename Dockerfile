FROM rocker/tidyverse:latest
# Install Jupyter
RUN /rocker_scripts/install_jupyter.sh
RUN pip3 install numpy
RUN pip3 install pandas
RUN R -e 'install.packages("predtools")'
RUN R -e 'install.packages("tidymodels")'
