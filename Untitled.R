library(tidyverse)
library(readr)
library(readxl)

url="https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv"
counties = read_csv(url)

home = read_csv("data/landdata-states.csv")

library(readxl)
Pop <- read_excel("data/PopulationEstimates.xls", skip = 2)

Pop %>%
  select(fips = FIPStxt, state = State, Area_Name, pop2019 = POP_ESTIMATE_2019) %>%
  group_by(state)%
  slice_max(pop2019, n = 1)

dim(Pop)
names(Pop)

