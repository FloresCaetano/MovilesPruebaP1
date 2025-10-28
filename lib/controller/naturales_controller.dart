import '../model/naturales_model.dart';

class NaturalesController {
  List<double> numeros = [];


  String determinarNumeros(String numerosIngresados) {
    numeros = [];

    if (numerosIngresados == '') {
      return 'Debe ingresar números';
    }

    for (String numero in numerosIngresados.split(",")){
      numeros.add(double.parse(numero));
    }

    final naturalesModel = new NaturalesModel(numeros);

    return naturalesModel.determinarNumeros();
  }

}