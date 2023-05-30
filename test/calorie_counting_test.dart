import 'dart:io';
import 'dart:math';

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

    List listaSumas = sumarConjuntos(lista);
    
    print(listaSumas.reduce((curr, next) => curr > next? curr: next));
  });
  test('El mayor conjunto es 69836', () {
    // 69836 -- Mayor conjunto
    var x = leerFile();
    
    String valores = x.toString();
    List lista = valores.split(', ,');

    List listaSumas = sumarConjuntos(lista);
    expect(69836, listaSumas.reduce((curr, next) => curr > next? curr: next));
  });
}

sumarConjuntos(List<dynamic> lista) {
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
  return listaSumas;
}

leerFile(){
  return File("C:/Users/M1-MQ3/Documents/Dart_Proyects/examen_calorias/calorie_counting/puzzle_1.txt").readAsLinesSync();
}
