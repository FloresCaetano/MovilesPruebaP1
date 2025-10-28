import '../model/naturales_model.dart';

class NaturalesController {
  List<int> numeros = [];


  String determinarNumeros(String numerosIngresados) {
    numeros = [];

    if (numerosIngresados == '') {
      return 'Debe ingresar números';
    }

    for (String numero in numerosIngresados.split(",")){
      int? numeroDouble = int.tryParse(numero);
      if ((numeroDouble == null) || (numeroDouble < 0)) {
        return 'Debe ingresar SOLAMENTE números NATURALES';
      }
      numeros.add(numeroDouble);
    }

    final naturalesModel = new NaturalesModel(numeros);

    return naturalesModel.determinarNumeros();
  }

}