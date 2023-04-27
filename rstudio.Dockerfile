FROM rocker/rstudio

EXPOSE 8787

COPY scripts/install-packages.R install-packages.R

RUN Rscript install-packages.R