import '../model/naturales_model.dart';

class NaturalesController {
  List<double> numeros = [];


  String determinarNumeros(String numerosIngresados) {
    numeros = [];

    if (numerosIngresados == '') {
      return 'Debe ingresar números';
    }

    for (String numero in numerosIngresados.split(",")){
      double? numeroDouble = double.tryParse(numero);
      if (numeroDouble == null) {
        return 'Debe ingresar SOLAMENTE números';
      }
      numeros.add(numeroDouble);
    }

    final naturalesModel = new NaturalesModel(numeros);

    return naturalesModel.determinarNumeros();
  }

}