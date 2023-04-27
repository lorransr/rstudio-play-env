# rstudio-play-env
A small docker playground env for RStudio

I made this simply because I didn't want to install RStudio on my computer, since the last time I did it I end up with all sort of problems. By using this environment I can easily configure it based on whatever project I am working on.

## Requisites

* Docker

## Creating Playground

After cloning this repository, you can just:

```docker compose up -d```

RStudio will be at http://localhost:8787

## Editing

Most of the scripts go to the scripts folder, and in the RStudio server they are allocated to the workspace folder. Since it is a volume, it is easy to interact with the script from inside and outside of the R Environment.

There are some basic libraries already at the install-packages.R script and you can edit it to add more packages if you need.

This repo is a base start, and should  be edited a lot, depending on the project.
