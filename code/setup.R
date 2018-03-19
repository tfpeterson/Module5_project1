## @knitr setup

knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(warning = FALSE)
knitr::opts_chunk$set(message = FALSE)

# set any missing NAs in tables to blank
options(knitr.kable.NA = '')

# load R packages
library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)
library(stringr)

## @knitr loadData

# load steak_survey dataset
data("weather_check", package = "fivethirtyeight")

# create subset, no missing data/NAs
# pick a specific region
sdat <- weather_check %>%
  filter(region == params$region)
