import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ContenedorTexto extends StatelessWidget {
  final double w;
  final double h;
  final String text;
  final double maxF;
  final double minF;
  final int maxL;
  final Alignment posicionText;
  final style;
  const ContenedorTexto(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.maxF,
      required this.minF,
      required this.maxL,
      required this.posicionText,
      this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(0, 255, 193, 7),
      alignment: posicionText,
      width: w,
      height: h,
      child: AutoSizeText(
        text,
        maxLines: maxL,
        maxFontSize: maxF,
        minFontSize: minF,
        style: style,
      ),
    );
  }
}

class ContenedorTextoGrande extends StatelessWidget {
  final double w;
  final double h;
  final String text;
  final double maxF;
  final double minF;
  final int maxL;
  final Alignment posicionText;
  final style;
  const ContenedorTextoGrande(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.maxF,
      required this.minF,
      this.style,
      required this.posicionText,
      required this.maxL});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(0, 255, 193, 7),
      alignment: posicionText,
      width: w,
      height: h,
      child: AutoSizeText(
        text,
        maxLines: maxL,
        maxFontSize: maxF,
        minFontSize: minF,
        textAlign: TextAlign.justify,
        style: style,
      ),
    );
  }
}
