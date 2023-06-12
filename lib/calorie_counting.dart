import 'dart:io';

leerFile(String path) => File(path).readAsLinesSync();

List<String> obtenerListaConjuntosDeFile(file) {
  String fileString = file.toString();
  fileString = limpiarLista(fileString);
  var listaConjuntos = fileString.split(',,');
  
  return listaConjuntos;
}
String limpiarLista(String listaString) {
  listaString = listaString.replaceAll('[', '');
  listaString = listaString.replaceAll(']', '');
  listaString = listaString.replaceAll(' ', '');
  return listaString;
}


sumarConjuntos(List<dynamic> lista) {
  List listaSumasDeConjuntos = [];
  for (var i = 0; i < lista.length; i++) {
    String conjuntoString = lista.elementAt(i);
    
    List listaConjunto = conjuntoString.split(',');
  
    listaSumasDeConjuntos.add(sumarElementosLista(listaConjunto));
  }
  return listaSumasDeConjuntos;
}

sumarElementosLista(List<dynamic> lista){
  int a = 0;
    for (var element in lista) {
      a += ((element is int)? element : int.parse(element.toString()));
    }
    return a;
}

obtenerLasMayoresCantidades(int elementos, List<dynamic> listaSumas) {
  List<int> listaDeLosTresMaxElfos = [];

  for (var i = 0; i < elementos; i++) {
    var valorMaximoActual = listaSumas.reduce((curr, next) => curr > next? curr: next);
    listaDeLosTresMaxElfos.add(valorMaximoActual);
    listaSumas.remove(valorMaximoActual);
  }
  return listaDeLosTresMaxElfos;
}


int obtenerSumaDelMayorConjuntoAPartirDeFile(file) {
  
  List<String> listaConjuntos = obtenerListaConjuntosDeFile(file);
  
  List listaSumasDeConjuntos = sumarConjuntos(listaConjuntos);
  List listaResultante = obtenerLasMayoresCantidades(1, listaSumasDeConjuntos);
  return listaResultante.elementAt(0);
}
int obtenerSumaDeLosTresMayoresConjuntosAPartirDeFile(file) {
  List<String> listaConjuntos = obtenerListaConjuntosDeFile(file);
  List listaSumasDeConjuntos = sumarConjuntos(listaConjuntos);
  List<int> listaDeLosTresMaxElfos = obtenerLasMayoresCantidades(3, listaSumasDeConjuntos);
  int sumaDeLosTresMaximos = sumarElementosLista(listaDeLosTresMaxElfos);

  return sumaDeLosTresMaximos;
}