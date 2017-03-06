#----Packages and sources-------------------------------------------------------
if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)
source("src/prog1_lesson03_part01_functions.R")

#----Test function greet_person-------------------------------------------------
test_that("greet_person prints 'Hello, World!!!' as default", {
  expect_output(greet_person(), "Hello, World!!!")
  expect_is(greet_person(), "character")
})

test_that(
  "greet_person prints 'Hello, name!' for character type name argument", {
    expect_output(greet_person(name = "A"), "Hello, A!!!")
    expect_is(greet_person(name = "A"), "character")
    expect_error(greet_person(name = A))
  })

test_that(
  "greet_person prints 'greeting, World!' for character type greeting argument", 
  {
    expect_output(greet_person(greeting = "Hi"), "Hi, World!!!")
    expect_is(greet_person(greeting = "Hi"), "character")
    expect_error(greet_person(greeting = Hi))
  })
