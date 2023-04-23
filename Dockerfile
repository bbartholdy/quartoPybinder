# get the base image, the rocker/verse has R, RStudio and pandoc
FROM rocker/verse:4.0.3

# required
MAINTAINER Bjorn Bartholdy <bpbartholdy@gmail.com>

WORKDIR /quartoPybinder
COPY . /quartoPybinder

# go into the repo directory
RUN . /etc/environment \
  && R -e "install.packages(c('markdown', 'quarto'), repos = c(CRAN = 'https://cloud.r-project.org'))"
