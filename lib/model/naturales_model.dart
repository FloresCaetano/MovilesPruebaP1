class NaturalesModel {
  List<double> numeros = [];

  NaturalesModel(this.numeros);

  String determinarNumeros() {
    int menoresQuince = 0;
    int mayoresCincuenta = 0;
    int entre25y45 = 0;
    double total = 0;
    double promedio = 0;

    for (double numero in numeros) {
      if (numero < 15) menoresQuince++;
      if (numero > 50) mayoresCincuenta++;
      if (numero >= 25 && numero <= 45) entre25y45++;
      total += numero;
    }

    if (numeros.isNotEmpty) {
      promedio = total / numeros.length;
    }

    return 'Menores de 15: ${menoresQuince.toStringAsFixed(2)}\n'
        'Entre 25 y 45: ${entre25y45.toStringAsFixed(2)}\n'
        'Mayores de 50: ${mayoresCincuenta.toStringAsFixed(2)}\n'
        'Promedio: ${promedio.toStringAsFixed(2)}';
  }
}