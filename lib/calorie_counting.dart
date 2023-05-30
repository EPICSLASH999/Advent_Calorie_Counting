import 'dart:io';

leerFile(){
  return File("C:/Users/M1-MQ3/Documents/Dart_Proyects/examen_calorias/calorie_counting/puzzle_1.txt").readAsLinesSync();
  
}

sumarConjuntos(List<dynamic> lista) {
  List listaSumas = [];
  for (var i = 0; i < lista.length; i++) {
    String n = lista.elementAt(i);
    
    n = limpiarLista(n);
    List lista2 = n.split(',');
  
    listaSumas.add(sumarElementosListaString(lista2));
  }
  return listaSumas;
}
String limpiarLista(String n) {
  n = n.replaceAll(' ', '');
  n = n.replaceAll('[', '');
  n = n.replaceAll(']', '');
  return n;
}

int sumarElementosListaString(List<dynamic> lista2) {
  int a = 0;
  for (var element in lista2) {
    a += int.parse(element);
  }
  return a;
}


sumarElementosLista(List<int> lista){
  int a = 0;
    for (var element in lista) {
      a += element;
    }
    return a;
}



obtenerLasMayoresCantidades(int elementos, List<dynamic> listaSumas) {
  List<int> listaDeLosTresMaxElfos = [];

  for (var i = 0; i < elementos; i++) {
    listaDeLosTresMaxElfos.add(listaSumas.reduce((curr, next) => curr > next? curr: next));
    listaSumas.remove(listaSumas.reduce((curr, next) => curr > next? curr: next));
  }
  return listaDeLosTresMaxElfos;
}