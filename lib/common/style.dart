import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';

final temaApp = ThemeData(
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: tituloInicio,
      fontFamily: 'Acme',
    ),
    titleMedium: TextStyle(
        color: titulo1, fontFamily: 'Poppins', fontWeight: FontWeight.w800),
    //Titulo txt AlertDialog
    titleSmall: TextStyle(
      color: negro,
      fontFamily: 'Acme',
    ),
    displayMedium: TextStyle(
      color: titulo1,
      fontFamily: 'Acme',
    ),
    //Titulo tabla
    displaySmall: TextStyle(
      color: letraBoton,
      fontFamily: 'Acme',
    ),
  ),
);
