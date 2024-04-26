import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';

final temaApp = ThemeData(
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: tituloInicio,
      fontSize: 200,
      fontFamily: 'Acme',
    ),
    titleMedium: TextStyle(
        color: titulo1,
        fontSize: 200,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w800),
    //Titulo txt AlertDialog
    titleSmall: TextStyle(
      color: negro,
      fontSize: 80,
      fontFamily: 'Acme',
    ),
    displayMedium: TextStyle(
      color: titulo1,
      fontSize: 92,
      fontFamily: 'Acme',
    ),
    displaySmall: TextStyle(
      color: letraBoton,
      fontSize: 24,
      fontFamily: 'Acme',
    ),
  ),
);
