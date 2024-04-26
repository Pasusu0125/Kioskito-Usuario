import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/common/style.dart';

//Botón sin icono
class Btn1 extends StatelessWidget {
  final Widget child;
  final double w;
  final double h;
  final Color color;
  final VoidCallback onTap;
  const Btn1(
      {super.key,
      required this.child,
      required this.w,
      required this.h,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: w,
      height: h,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: btn1,
      onPressed: onTap,
      child: child,
    );
  }
}

//Botón con icono
class Btn2 extends StatelessWidget {
  final double w;
  final double h;
  final double w1;
  final double h1;
  final Color color;
  final String text;
  final Widget child;
  final VoidCallback onTap;
  const Btn2(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.color,
      required this.child,
      required this.w1,
      required this.h1,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: w,
      height: h,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: color,
        onPressed: onTap,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var tamanioBtn = constraints;
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                child,
                Container(
                  alignment: Alignment.center,
                  width: tamanioBtn.maxWidth * w1,
                  height: tamanioBtn.maxHeight * h1,
                  child: TextoBotones(text: text),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

//Texto Botón
class TextoBotones extends StatelessWidget {
  final String text;

  const TextoBotones({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      maxFontSize: 24,
      minFontSize: 12,
      maxLines: 1,
      text,
      style: temaApp.textTheme.displaySmall,
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
