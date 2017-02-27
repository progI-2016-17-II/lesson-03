#----src/prog1_lesson03_part01_functions.R függvényeinek alternatívái-----------

# egysoros függvények esetében a kapcsos zárójel elhagyható
say_hello_v1 <- function() print("Hello, World!")

# hatvány függvény return-nel
exponent_v1 <- function(x, y = 2) {
  return(x ^ y) 
}

# plusz számítás a return után
# a return utáni részt már nem hajtja végre a függvény
exponent_v2 <- function(x, y = 2) {
  return(x ^ y)
  x + 2
}

# ha nem specifikáljuk a visszatérési értéket, az utolsó sort hajtja végre
exponent_v3 <- function(x, y = 2) {
  x ^ y
  x + 2
}

# mindkét sor végrehajtása
exponent_v4 <- function(x, y = 2) {
  e <- x ^ y
  e + 2
}

# x argumentum default értékkel
exponent_v5 <- function(x = 5, y = 2) {
  x ^ y 
}
