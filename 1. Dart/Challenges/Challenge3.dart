/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 * - Los numeros primos no son pares excepto el 2
 */

void main() {
  
  for (var i = 1; i <= 100; i++) {
    
    if (isPrime(i))
      print(i);
    
  }
  
}

bool isPrime(final number) {
  
  if (number < 2)
    return false;
  
  for (var i = 2; i < number; i++) {
    if ((number % i) == 0)
      return false;
  }

  return true;
}