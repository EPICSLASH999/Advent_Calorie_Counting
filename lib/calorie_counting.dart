
import 'dart:io';

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

sumarElementosLista(List<int> lista){
  int a = 0;
    for (var element in lista) {
      a += element;
    }
    return a;
}

leerFile(){
  return File("C:/Users/M1-MQ3/Documents/Dart_Proyects/examen_calorias/calorie_counting/puzzle_1.txt").readAsLinesSync();
}

