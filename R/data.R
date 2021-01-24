#' @importFrom tibble tibble
NULL
#' Suffolk County.
#'
#' An sf MULTIPOLYGON object representing the census tracts in Suffolk County, MA.
#' @format An sf object with 203 rows and 1 column `fips` in EPSG:4326.
#'  \describe{
#'    \item{fips}{Census tract fips code}
#'    \item{geometry}{Census tract geometry}
#'  }
#'
"suffolk_county"


#' American Community Survey 5 year estimates
#'
#' A tibble containing ACS 5 year estimates provided by the Boston Area Research Initiative (BARI) for the years 2013-2017 by the census tract level.
#' @format A tibble with 1478 rows and 59 columns.
"acs_raw"

#' ACS Education Data
#'
#' A subset of the `acs_raw` tibble containing variables related to education.
#' @format A tibble with 1456 rows and 7 columns.
"acs_edu"

#' ACS Housing Data
#'
#' A subset of the `acs_raw` tibble containing variables related to housing.
#' @format A tibble with 1311 rows and 6 columns.
"acs_housing"


#' Greater Boston Area Commuting Data
#'
#' A subset of the `acs_raw` tibble containing commuting data for Middlesex, Norfolk, and Suffolk Counties.
#' @format A tibble with 648 rows and 14 columns.
"commute"


#' Ecometrics
#'
#' A tibble containing frequency counts for BARI's annual release of Ecometrics for the years 2015 through 2018. See [here](https://ui.josiahparry.com/ecometrics.html) for more on ecometrics.
#' @format A tibble with 68 rows and 4 columns.
"ecometrics"


#' Airbnb Listings
#'
#' A tibble containing listings for Airbnb within the city of Boston.
#' @format A tibble with 3799 rows and 7 columns.
#' \describe{
#'    \item{id}{Listing ID. Used for joining.}
#'    \item{neighborhood}{The neighborhood the listing is located in.}
#'    \item{room_type}{The listing type—e.g. entire home, private room, etc.}
#'    \item{price}{The dollar price for a single night stay.}
#'    \item{minimum_nights}{The minimum number of nights a guest can stay at the listing.}
#'    \item{availability_365}{The number of days a year that the listing is available.}
#'    \item{host_id}{The ID of the host. Used for joining.}
#'}
"airbnb_listings"


#' Airbnb Locations
#'
#' A tibble containing the locations of Airbnb listings within the city of Boston.
#' @format A tibble with 3799 rows and 3 columns.
#' \describe{
#'    \item{id}{Listing ID. Used for joining.}
#'    \item{longitude}{The longitude of the listing in EPGS 4326.}
#'    \item{latitude}{The latitude of the listing in EPGS 4326.}
#' }
"airbnb_locations"

#' Airbnb Hosts
#'
#' A tibble containing host information for Airbnb listings within the city of Boston.
#' @format A tibble containing 1335 rows and 9 columns.
#' \describe{
#'    \item{id}{The host ID. Used for joining.}
#'    \item{name}{The host's name.}
#'    \item{since_year}{The year that they became a host.}
#'    \item{since_month}{The month that they became a host.}
#'    \item{since_day}{The day they became a host.}
#'    \item{reponse_rate}{The percent response rate of a host as a character vector. Requires cleaning.}
#'    \item{accemptance_rate}{The percent acceptance rate of a host as a character vector. Requires cleaning.}
#'    \item{superhost}{A dummy variable that indicates whether or not a host is a superhost.}
#'    \item{n_listings}{The number of a listings a host has.}
#' }
"airbnb_hosts"












