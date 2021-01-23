.onAttach <- function(libname, pkgname) {

  packageStartupMessage("Loading data for The Urban Informatics Toolkit.")
  requireNamespace("sf", quietly = TRUE)
}
