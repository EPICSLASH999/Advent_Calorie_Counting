import 'package:calorie_counting/calorie_counting.dart';
import 'package:test/test.dart';

void main() {
  const String path = 'C:/Users/W10/OneDrive/Documentos/Dart/examen_calorias/calorie_counting/puzzle_1.txt';
  group('Puzzle 1:', () {
    test('Leer .txt', () {
      var file = leerFile(path);
      expect((file != null), true);
  });
    test('Leer solo el primer conjunto', () {
      var file = leerFile(path);
      
      List listaConjuntos = obtenerListaConjuntosDeFile(file);
      List conjunto1 = listaConjuntos.elementAt(0).split(',');

      List listaEsperada = ['9057', '8878', '2753', '7027', '3880', '7154', '8022', '6710', '5721'];
      expect(conjunto1, listaEsperada);
    });
    test('Sumar el primer conjunto', () {
      var file = leerFile(path);
      List<String> listaConjuntos = obtenerListaConjuntosDeFile(file);
      List listaSumasDeConjuntos = sumarConjuntos(listaConjuntos);
      
      expect(59202, listaSumasDeConjuntos.elementAt(0));
    });
    test('El mayor conjunto es 69836', () {
      // 69836 -- Mayor conjunto
      var file = leerFile(path);
      int sumaDelMayorConjunto = obtenerSumaDelMayorConjuntoAPartirDeFile(file);

      expect(69836, sumaDelMayorConjunto);
    });

  });
  
  group('Puzzle 2:', () {
    test('Guardar la suma maxima', () {
      // siguiente valor = 69796
      var file = leerFile(path);
      List<String> listaConjuntos = obtenerListaConjuntosDeFile(file);

      List listaSumasDeConjuntos = sumarConjuntos(listaConjuntos);
      
      List<int> listaResultante = obtenerLasMayoresCantidades(1, listaSumasDeConjuntos);

      expect(69836, listaResultante.elementAt(0));
    });
    test('Obtener las 3 sumas maximas', () {
      // 3 max = 69836, 69796, 68336
      var file = leerFile(path);
      List<String> listaConjuntos = obtenerListaConjuntosDeFile(file);

      List listaSumasDeConjuntos = sumarConjuntos(listaConjuntos);
      
      List<int> listaDeLosTresMaxElfos = obtenerLasMayoresCantidades(3, listaSumasDeConjuntos);

      expect([69836, 69796, 68336], listaDeLosTresMaxElfos);
    });
    test('Obtener las suma de los 3 maximos', () {
      // 207968
      var file = leerFile(path);
      int sumaDeLosTresMaximos = obtenerSumaDeLosTresMayoresConjuntosAPartirDeFile(file);
      expect(207968, sumaDeLosTresMaximos);
    });
  
  
  });

}








