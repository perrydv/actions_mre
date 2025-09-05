test_that("calling R manually works", {
  infile <- system.file(file.path("say_cheese","say_cheese.R"),
                        package="actionsmre")
  call_R_manually(infile)
  out <- readLines("say_cheese.Rout")
  file.remove("say_cheese.Rout")
  expect_true(sum(grepl("\\[1\\] \"cheese\"", out))==1)
})

test_that("calling R from callr works", {
  infile <- system.file(file.path("say_cheese","say_cheese.R"),
                        package="actionsmre")
  call_R_via_callr(infile)
  out <- readLines("say_cheese.Rout")
  file.remove("say_cheese.Rout")
  expect_true(sum(grepl("\\[1\\] \"cheese\"", out))==1)
})

test_that("installing and using toyPackage works", {
  install_toyPackage()
  expect_equal(toyPackage::hello(), 123)
})
