import 'package:flutter/material.dart';
import 'package:pruebap1/view/principal_view.dart';
import 'package:pruebap1/view/resultado_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calcular Sueldo Base",
      initialRoute: '/',
      routes: {
        '/':(context) => PrincipalView(),
        '/resultado':(context)=>ResultadoView(),
      },
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
      ),
    );
  }

}
