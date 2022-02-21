# 1. Crie um objeto com os valores 54, 0, 17, 94, 12.5, 2, 0.9, 15.
x <- c(54, 0, 17, 94, 12.5, 2, 0.9, 15)
#   a. Some o objeto acima com os valores 5, 6.
x + c(5,6)
#   b. Some o objeto acima com os valores 5, 6, 7.
x + c(5, 6, 7) # erro, nao e multiplo 
#2.  Construa um único objeto com as letras: A, B, e C, repetidas cada uma 15, 12, e 8 vezes, respectivamente.
x <-rep(c("A","B", "C"), times= c(15,12,8))
#   a. Mostre na tela, em forma de verdadeiro ou falso, onde estão as letras B nesse objeto.
x == "B"
#   b. Veja a página de ajuda da função sum() e descubra como fazer para contar o número de letras B neste vetor (usando sum()).
sum(x == "B")
# 3. Crie um objeto com 100 valores aleatórios de uma distribuição uniforme U(0,1). Conte quantas vezes aparecem valores maiores ou iguais a 0,5.
sum(runif(100, 0, 1)>=0.5)
# 4. Calcule as 50 primeiras potências de 2, ou seja, 2^1,2^2,2^3,...,2^50.
print(y<-2 ^ c(1:50), digits = 2) 
#   a. Calcule o quadrado dos números inteiros de 1 a 50, ou seja, 1^2,2^2,3^2,…,50^2.
z <- c(1:50)^2
#   b. Quais pares são iguais, ou seja, quais números inteiros dos dois exercícios anteriores satisfazem a condição 2^n=n^2?
iguais <- y ==z
z[iguais]
which(iguais)
#   c. Quantos pares existem?
sum(iguais)
# 5. Calcule o seno, coseno e a tangente para os números variando de 0 a 2(pi), com distância de 0.1 entre eles. (Use as funções sin(), cos(), tan()).
numeros <- seq(0, (2*pi), 0.1 );
c <- cos(numeros)
s <- sin(numeros)
t <- tan(numeros)

#    a. Calcule a tangente usando a relação tan(x)=sin(x)/cos(x).
tg2 = s/c

#    b. Calcule as diferenças das tangentes calculadas pela função do R e pela razão acima.
diff <- (t-tg2) 
#    c. Quais valores são exatamente iguais?
c[diff==0]
which(diff ==0)
#    d. Qual a diferença máxima (em módulo) entre eles? Qual é a causa dessa diferença?
max(abs(diff))
