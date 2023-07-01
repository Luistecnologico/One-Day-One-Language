/*
 * Crea un programa que cuente cuantas veces se repite cada palabra
 * y que muestre el recuento final de todas ellas.
 * - Los signos de puntuación no forman parte de la palabra.
 * - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 * - No se pueden utilizar funciones propias del lenguaje que
 *   lo resuelvan automáticamente.
 */

void main() {
  countWords("Hello world. People, in the world. People of the galaxy");
}

void countWords(String str) {
  // To lower case
  str = str.toLowerCase();
  // Remove all symbols
  str = str.replaceAll(new RegExp(r'[^\w\s]+'), '');
  
  var strSplit = str.split(" ");
  var wordResume = strSplit.toSet();
  
  wordResume.forEach((word) {
    final occurrences = strSplit.where((e) => e == word).length;
    print("[$word]:[$occurrences]");
  });
 
}