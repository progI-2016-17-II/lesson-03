#----Packages and sources-------------------------------------------------------
if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)
source("src/prog1_lesson03_part01_functions.R")

#----Test function say_hello----------------------------------------------------
test_that("say_hello prints 'Hello, World!'", {
  expect_output(say_hello(), "Hello, World!")
  expect_is(say_hello(), "character")
})

#----Test function hello_person-------------------------------------------------
test_that(
  "hello_person prints 'Hello, name!' for character type name argument", {
  expect_output(hello_person(name = "A"), "Hello, A!")
  expect_is(hello_person(name = "A"), "character")
  expect_error(hello_person(name = A))
})

#----Test function exponent-----------------------------------------------------
test_that("exponent raises x to the power of y", {
  expect_equal(exponent(3, 3), 27)
  expect_equal(exponent(x = 2, y = 3), 8)
  expect_error(exponent(y = 4))
})

test_that("exponent raises x to the power of 2 if y isn't specified", {
  expect_equal(exponent(3), 9)
  expect_equal(exponent(x = 4), 16)
  expect_error(exponent(y = 4))
})

test_that("exponent gives NA if x or y is NA", {
  expect_equal(exponent(NA), NA_integer_)
  expect_equal(exponent(NA, NA), NA_integer_)
  expect_equal(exponent(3, NA), NA_integer_)
})

test_that("exponent works with numeric type arguments", {
  expect_is(exponent(x = 2, y = 3), "numeric")
  expect_error(exponent("a"))
  expect_equal(exponent(factor("a")), NA)
  expect_equal(exponent(TRUE), 1)
})
