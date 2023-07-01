/*
 * Crea un programa que invierta el orden de una cadena de texto
 * sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 */

void main() {
  print(reverse("Hola mundo"));
}

String reverse(String str) {
 
  var result = "";
  
  for (int i = (str.length - 1); i >= 0; i--) {
    result = result + str[i];
  }
  return result;
}