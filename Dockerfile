FROM jupyter/scipy-notebook:latest

# Add RUN statements to install packages as the $NB_USER defined in the base images.

# Add a "USER root" statement followed by RUN statements to install system packages using apt-get,
# change file permissions, etc.

# If you do switch to root, always be sure to add a "USER $NB_USER" command at the end of the
# file to ensure the image runs as a unprivileged user by default.

# First install some missing dependencies
RUN conda install --quiet --yes colorama
RUN conda install --quiet --yes spacy
RUN python -m spacy download nl_core_news_sm

