call_R_manually <- function(infile) {
  system2("R", c("CMD","BATCH", infile))
}

call_R_via_callr <- function(infile) {
  callr::rcmd("BATCH", c(infile), echo=TRUE)
}
