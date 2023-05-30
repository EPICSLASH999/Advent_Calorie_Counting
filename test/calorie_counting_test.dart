import 'dart:io';

import 'package:calorie_counting/calorie_counting.dart';
import 'package:test/test.dart';

void main() {
  test('Leer primera linea de .txt', () {

    var x = leerFile();
    print(x);
  });
}

leerFile(){
  return File("C:/Users/M1-MQ3/Documents/Dart_Proyects/examen_calorias/calorie_counting/puzzle_1.txt").readAsLinesSync();
}
