library(magrittr)

cleaned_dat <- readr::read_csv("data-raw/311-sample-dat.csv") %>%
  janitor::clean_names() %>%
  dplyr::mutate(open_date = lubridate::mdy(open_dt),
                dplyr::across(where(is.character), tolower)) %>%
  dplyr::select(-c(open_dt, case_enquiry_id))


readr::write_csv(cleaned_dat, "data/311-sample.csv")

writexl::write_xlsx(cleaned_dat, "data/311-sample.xlsx")


