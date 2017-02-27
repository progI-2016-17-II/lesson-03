######################
# Függvények         #
# Programozás I.     #
# 3. óra             #
# 2017-02-28         #
######################

#----Argumentumok---------------------------------------------------------------
## függvények behívása
source("src/prog1_lesson03_part01_functions.R")
source("src/prog1_lesson03_part01_functions2.R")

### Hello, World! függvény
# függvény argumentum nélkül
say_hello()

# egysoros függvény esetében a kapcsos zárójel elhagyható a függvényen belül
say_hello_v1()

### Hello, XY! függvény
# az előző függvényt bővítve hozzáadunk egy argumentumot
# paste0: összekapcsolja az argumentumként megadott objektumokat egy karakterbe
# paste vs paste0: paste0 az argumentumok közé nem tesz space-t
hello_person("Krumpli")

### Exponenciális függvény
# y default argumentum: van default értéke

# argumentumok megadása névvel
exponent(x = 2, y = 3)

# argumentumok megadása név nélkül, pozíció szerint
exponent(2, 3)

# argumentumok megadása keverve névvel és pozícióval
exponent(x = 2, 3)
exponent(2, y = 3)

# argumentumok megadása névvel tetszőleges sorrendben
exponent(y = 3, x = 2)

# argumentumok megadása név nélkül tetszőleges sorrendben
# nem úgy működik, mint az előző
# pozíció szerint fogja venni az értékeket
exponent(3, 2)

# csak default argumentum megadása
# nem működik, x-nek muszáj értéket megadnunk
exponent(y = 3)

# csak x argumentum megadása
# működik, y-nál a default értéket veszi
exponent(x = 2)

# csak egy érték megadása
# a megadott értéket x értékének fogja venni, mert annak nincs default értéke
# y-nál a default értéket veszi
exponent(2)


#----Visszatérési érték---------------------------------------------------------
exponent(2, 4)

# v1: hatvány függvény return-nel
exponent_v1(2, 4)

# v2: plusz számítás a return után
# ezt a return utáni részt már nem hajtja végre a függvény
exponent_v2(2, 4)

# v3: ha nem specifikáljuk a visszatérési értéket, az utolsó sort hajtja végre
exponent_v3(2, 4)

# v4: mindkét lépés végrehajtása
exponent_v4(2, 4)


#----Függvények környezete------------------------------------------------------
# függvény argumentumai
formals(exponent)
# függvény body
body(exponent)
# függvény környezete
environment(exponent)

# nincs megszabva x sem a függvény környezetében, sem a globális környezetben
exponent(y = 3)

# megszabjuk x-et a globális környezetben
z <- 2
exponent(z, y = 3)

# megadjuk x-et az argumentummal
exponent(x = 5, y = 3)

# most meg van szabva x a globális környezetben
# v5: megszabjuk az x default értékét
exponent_v5(y = 3)