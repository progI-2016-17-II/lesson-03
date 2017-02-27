#----Hello, World! függvény-----------------------------------------------------
say_hello <- function() {
  # printelje ki, hogy "Hello, world!"
  print("Hello, World!")
}

#----Hello, XY! függvény--------------------------------------------------------
hello_person <- function(name) {
  # kiprinteli a name argumentumban meghatározott nevet "Hello, name!" formában
  # paste0 összekapcsolja az argumentumként megadott objektumokat egy karakterbe
  print(paste0("Hello, ", name, "!"))
}

#----Hatvány függvény-----------------------------------------------------------
# y default értéke 2
exponent <- function(x, y = 2) {
  # x-et az y-dik hatványára emeli
  x ^ y
}
