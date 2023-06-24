/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */
 
void main() {
  
  var n0 = 0;
  var n1 = 1;
  
  for (var i = 0; i < 50; i++) {
    print(n0);
    
    final fib = n0 + n1;
    n0 = n1;
    n1 = fib;
  }
  
}