# Jogando um dados 6 vezes

# Poucas tentativas
for(i in 1:4){
  x = sample(1:6, 6, replace = T)
  cat(mean(x), "\n")
}

# Muitas tentativas
for(i in 1:4){
  x = sample(1:6, 10000, replace = T)
  cat(mean(x), "\n")
}
