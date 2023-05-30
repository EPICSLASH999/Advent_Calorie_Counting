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
    n = n.replaceAll('[', '');
    List lista2 = n.split(',');
    List listaEsperada = ['9057', '8878', '2753', '7027', '3880', '7154', '8022', '6710', '5721'];
    expect(lista2, listaEsperada);
  });
  test('Sumar el primer conjunto', () {
    var x = leerFile();
    
    String valores = x.toString();
    List lista = valores.split(', ,');

    List listaSumas = sumarConjuntos(lista);
    
    expect(59202, listaSumas.elementAt(0));
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
