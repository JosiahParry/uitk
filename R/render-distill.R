
render_distill <- function(dir = "course-site") {
  to_render <- list.files(dir, pattern = ".Rmd")
  purrr::map(file.path(dir, to_render),
             .f = ~rmarkdown::render_site(.x))

}
