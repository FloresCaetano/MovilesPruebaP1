import 'package:flutter/material.dart';

class BotonCalcular extends StatelessWidget{
  final VoidCallback onPressed;

  BotonCalcular({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text("Calcular Sueldo"));
  }
}