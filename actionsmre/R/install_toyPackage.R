install_toyPackage <- function() {
  lib <- file.path(tempdir(), "templib")
  if(!dir.exists(lib)) dir.create(lib, recursive=TRUE)
  pkgDir <- system.file(file.path("toyPackage", "toyPackage"), package="actionsmre")
  withr::with_libpaths(lib, {
    devtools::install(pkgDir, quick=TRUE, quiet=FALSE, upgrade="never")
    withr::with_libpaths(lib, loadNamespace("toyPackage"))
  })
}