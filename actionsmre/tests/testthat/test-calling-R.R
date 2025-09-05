test_that("calling R manually works", {
  infile <- system.file(file.path("say_cheese","say_cheese.R"),
                        package="actionsmre")
  call_R_manually(infile)
  out <- readLines("say_cheese.Rout")
  file.remove("say_cheese.Rout")
  expect_identical(out[21], "[1] \"cheese\"")
})

test_that("calling R from callr works", {
  infile <- system.file(file.path("say_cheese","say_cheese.R"),
                        package="actionsmre")
  call_R_via_callr(infile)
  out <- readLines("say_cheese.Rout")
  file.remove("say_cheese.Rout")
  expect_identical(out[21], "[1] \"cheese\"")
})
