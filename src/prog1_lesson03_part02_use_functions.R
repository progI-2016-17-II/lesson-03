######################
# Feladatok          #
# Programozás I.     #
# 3. óra             #
# 2017-02-28         #
######################

## függvények behívása
source("src/prog1_lesson03_part02_functions.R")

## greet_person függvény kipróbálása
# megadjuk mindkét argumentumot
greet_person(greeting = "Szia", name = "Valaki")
# argumentum nélkül a default értékeket adja
greet_person()

## greet_person_random függvény kipróbálása
greet_person_random()

## exponent_add függvény kipróbálása különböző értékek megadásával
# amelyik argumentumot nem adjuk meg, ott a függvény default értéket fog venni
exponent_add(x = 5)
exponent_add(z = 10)
exponent_add(4, 5, 6)

## dice függvény
# 7 oldalú kockával dobunk
dice(7)
# 12 oldalú kockával dobunk
dice(12)
# 6 oldalú kockával dobunk
# 6 a default érték, ezért nem szükséges megadni az argumentum értékét
dice()
