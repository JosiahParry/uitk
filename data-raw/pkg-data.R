library(tidyverse)


acs_raw <- read_csv("data-raw/ACS_1317_TRACT.csv")

acs_edu <- read_csv("data-raw/acs_edu.csv")

acs_housing <- read_csv("data-raw/acs-housing.csv")

ecometrics <- read_csv("data-raw/ecometrics.csv") %>%
  mutate(across(where(is.character), tolower))

commute <- read_csv("data-raw/gba_commute.csv")

suffolk_county <- sf::read_sf("data-raw/suffolk_acs.geojson")


airbnb_hosts <- read_csv("data-raw/airbnb/hosts.csv", na = c("N/A"))
airbnb_listings <- read_csv("data-raw/airbnb/listings.csv")
airbnb_locations <- read_csv("data-raw/airbnb/locations.csv")
airbnb_reviews <- read_csv("data-raw/airbnb/reviews.csv")


usethis::use_data(acs_raw, acs_housing, acs_edu, ecometrics, commute, suffolk_county,
                  airbnb_hosts, airbnb_listings, airbnb_locations, overwrite = TRUE)
