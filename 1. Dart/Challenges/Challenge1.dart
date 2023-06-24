/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

import 'package:collection/collection.dart';

void main() {  
  if (isAnagrama("hola", "aloh")) {
    print("Las palabras son anagramas");
  } else {
    print("Las palabras no son anagramas");
  }
}

bool isAnagrama(final String str1, final String str2) {
  Function eq = const ListEquality().equals;
  if (str1.toLowerCase() == str2.toLowerCase())
    return false;
  
  final List<String> str1List = str1.toLowerCase().split('');
  final List<String> str2List = str2.toLowerCase().split('');
  str1List.sort();
  str2List.sort();
  return eq(str1List, str2List);
}