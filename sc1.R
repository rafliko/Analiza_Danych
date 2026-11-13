# Skróty:
# <- = alt + -
# komentarz = ctrl + shift + c
# napraw kod = ctrl + shift + a

x <- c(9, 10, 11, -2)
x
sum(x)
c(x, 98)
y <- 9:101
y[10]
y[4:13]
y[c(5,9:20,30)] # <- wektor
y[-5] # <- wykluczenie wsp.
y[-c(1:40)]

z <- 1:5
z[2] <- 100
z
seq(from = 2, to = 30, by = 7) # f1 - help, tab - argumenty
rep(1:3, times = 3, each = 2)

x <- rep(1:9, 1:9)
rev(x)

c("ala",2) 
c(TRUE, 2) # T = TRUE, F = FALSE

# Symbole:
NA
NaN
0/0
5/0
NULL
Inf

x <- 1:4
x*2
x + 2:5
x + 2:10

seq(from = 3, to = 100, by = 2)
1:49*2+1

wzrost <- sample(x = 150:220, size = 54, replace = TRUE)
wzrost

imiona <- c(
  "Anna", "Maria", "Katarzyna", "Małgorzata", "Agnieszka", "Krystyna", "Barbara", "Ewa", "Elżbieta", "Zofia",
  "Jan", "Piotr", "Krzysztof", "Andrzej", "Tomasz", "Paweł", "Stanisław", "Michał", "Marcin", "Marzena",
  "Magdalena", "Joanna", "Monika", "Karolina", "Natalia", "Aleksandra", "Kamil", "Łukasz", "Mateusz", "Bartosz",
  "Tomasz", "Jakub", "Kacper", "Szymon", "Michalina", "Wiktoria", "Julia", "Maja", "Zuzanna", "Alicja",
  "Antoni", "Franciszek", "Jan", "Aleksander", "Filip", "Mikołaj", "Ignacy", "Tymon", "Leon", "Nikola",
  "Blanka", "Helena", "Pola", "Liliana"
)
length(imiona)
names(wzrost) <- imiona
wzrost
wzrost["Jakub"]

ja <- 170
wzrost > ja
length(wzrost[wzrost > ja])
sum(wzrost > ja)

sum(wzrost > ja)/length(wzrost)
mean(wzrost > ja)

wzrost[max(wzrost) == wzrost]
wzrost[which.max(wzrost)]

(3:100)[c(TRUE, FALSE)]

A <- matrix(1:9, nrow = 3, byrow = TRUE)
A
A[3, 2]

5 %% 2 # Reszta z dzielenia
5 %/% 2 # Część całkowita z dzielenia

sum(A[A %% 3 == 0])

suma <- function(wektor) {
  a <- 0
  for (i in wektor) {
    a <- a + i
  }
  a
}

x <- 1:1000
suma(x)

library(microbenchmark)
microbenchmark(x, sum = sum(x), suma = suma(x), times = 100)