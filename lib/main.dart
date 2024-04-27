import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/style.dart';
import 'package:kioskito_usuario/pages/iniciar_sesion.dart';
import 'package:kioskito_usuario/pages/productos_disponibles.dart';
import 'package:kioskito_usuario/pages/realizar_compra.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: temaApp,
      routes: {
        '/': (context) => const IniciarSesion(),
        '/productosDisponibles': (context) => const ProductosDisponibles(),
        '/realizarCompra': (context) => const RealizarCompra(),
      },
    );
  }
}
