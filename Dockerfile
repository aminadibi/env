FROM rocker/tidyverse:latest
# Install Jupyter
RUN /rocker_scripts/install_python.sh
RUN pip3 install --no-cache-dir jupyter
RUN R -e 'install.packages("predtools")'
RUN R -e 'install.packages("tidymodels")'
