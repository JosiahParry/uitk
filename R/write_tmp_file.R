setup_flat_file <- function(file_name, .f = readr::read_csv) {
  file_url <- glue::glue("https://raw.githubusercontent.com/JosiahParry/uitk/master/data/{file_name}")
  print(url)

  .f(url)
}


tut_write_tmp_file <- function(f_name, dir = "data") {

  f_url <- glue::glue("https://raw.githubusercontent.com/JosiahParry/uitk/master/data/{f_name}")

  tmp_dir <- tempdir()

  dir.create(file.path(tmp_dir, dir))

  dest_name <- glue::glue("{tmp_dir}/{dir}/{f_name}")

   download.file(f_url, dest_name)

  setwd(tmp_dir)
}
