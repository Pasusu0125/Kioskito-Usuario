import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';

//Botón sin icono
class Btn1 extends StatelessWidget {
  final Widget child;
  final double width;
  final double heigth;
  final Color color;
  final VoidCallback onTap;
  const Btn1(
      {super.key,
      required this.child,
      required this.width,
      required this.heigth,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: heigth,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: btn1,
      onPressed: onTap,
      child: child,
    );
  }
}

//Texto Botón
class TextoBotones extends StatelessWidget {
  final String text;
  final double maxFontSize;
  final double minFontSize;
  const TextoBotones({
    super.key,
    required this.text,
    required this.maxFontSize,
    required this.minFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      maxFontSize: maxFontSize,
      minFontSize: minFontSize,
      maxLines: 1,
      text,
      style: Theme.of(context).textTheme.displaySmall,
      textAlign: TextAlign.center,
    );
  }
}

class IconoBtn extends StatelessWidget {
  final icno;
  final Color color;
  const IconoBtn({super.key, required this.icno, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icno,
      color: color,
    );
  }
}
