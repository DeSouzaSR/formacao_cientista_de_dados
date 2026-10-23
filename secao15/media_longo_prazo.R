# Espera-se que grandes amostras tendam a uma média

# Pequena amostra
for(i in 1:10){
  x <- sample(1:6, 6, replace = TRUE)
  cat(mean(x), "\n")
}

# Grande amostra
for(i in 1:10){
  x <- sample(1:6, 10000, replace = TRUE)
  cat(mean(x), "\n")
}