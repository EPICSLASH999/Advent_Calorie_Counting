import 'package:calorie_counting/calorie_counting.dart';

void main(List<String> arguments) {
  String path = 'C:/Users/W10/OneDrive/Documentos/Dart/examen_calorias/calorie_counting/puzzle_1.txt';
  
  var file = leerFile(path);
  
  int sumaDelMayorConjunto = obtenerSumaDelMayorConjuntoAPartirDeFile(file);
  int sumaDeLosTresMaximos = obtenerSumaDeLosTresMayoresConjuntosAPartirDeFile(file);

  print('La suma del máximo conjunto es: $sumaDelMayorConjunto');
  print('La suma de los 3 maximos conjuntos es: $sumaDeLosTresMaximos');
}
