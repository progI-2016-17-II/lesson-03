#----Greet, name!!! függvény----------------------------------------------------
greet_person <- function(greeting = "Hello", name = "World") {
  print(paste0(greeting, ", ", name, "!!!"))
}

#----Greet, Name! random függvény-----------------------------------------------
greet_person_random <- function() {
  greetings <- c("Hello",
                 "Hi",
                 "Good morning",
                 "Yo",
                 "Whattup",
                 "How's it goin'",
                 "Hey",
                 "Goodbye")
  names <- c("World",
             "Mom",
             "Miss Crabtree",
             "Adrian",
             "G",
             "Dude",
             "Jude",
             "Mr. Chips")
  print(paste0(sample(greetings, 1), ", ", sample(names, 1), "!"))
}

#----Hatvány, szorzás függvény--------------------------------------------------
exponent_add <- function(x = 2, y = 2, z = 2) {
  print(paste0(x, " raised to the power of ", y, " and multiplied by ", z, 
              ". The result is ", x ^ y * z, "."))
}

#----Dobókocka függvény---------------------------------------------------------
dice <- function(side_number = 6) {
  result <- sample(side_number, 1)
  print(paste0("A dobott érték ", result, "."))
}
