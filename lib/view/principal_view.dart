import 'package:flutter/material.dart';
import 'package:pruebap1/controller/naturales_controller.dart';

import '../widgets/boton_calcular.dart';
import '../widgets/input.dart';

class PrincipalView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView>{
  final controller = NaturalesController();
  final numerosCtrl = TextEditingController();
  String resultado = "";

  void _calcular_resultado(){
    String numeros = numerosCtrl.text;
    resultado = controller.determinarNumeros(numeros);
    Navigator.pushNamed(context, "/resultado", arguments: resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prueba"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InputVenta(controller: numerosCtrl, label: "Ingrese los numeros separados por \',\'"),
            SizedBox(height: 10,),
            BotonCalcular(onPressed: _calcular_resultado),
            SizedBox(height: 40,),
            Text(resultado)
          ],
        ),
      ),
    );
  }

}