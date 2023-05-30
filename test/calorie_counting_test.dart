import 'dart:io';

import 'package:calorie_counting/calorie_counting.dart';
import 'package:test/test.dart';

void main() {
  test('Leer primera linea de .txt', () {

    var x = leerFile();
    
    //print(x);
  });
  test('Leer solo el primer conjunto', () {
    var x = leerFile();
    
    String valores = x.toString();
    var lista = valores.split(', ,');
    
    String n = lista.elementAt(0);
    n = n.replaceAll(' ', '');
    var lista2 = n.split(',');
    print(lista2);
  });
  test('Sumar el primer conjunto', () {
    var x = leerFile();
    
    String valores = x.toString();
    List lista = valores.split(', ,');

    List listaSumas = [];
    for (var i = 0; i < lista.length; i++) {
      String n = lista.elementAt(i);
      n = n.replaceAll(' ', '');
      n = n.replaceAll('[', '');
      n = n.replaceAll(']', '');
      List lista2 = n.split(',');

      int a = 0;
      for (var element in lista2) {
        a += int.parse(element);
      }
      listaSumas.add(a);
    }
    
    
    print(listaSumas);
  });
}

leerFile(){
  return File("C:/Users/M1-MQ3/Documents/Dart_Proyects/examen_calorias/calorie_counting/puzzle_1.txt").readAsLinesSync();
}
