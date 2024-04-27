import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kioskito_usuario/common/paleta.dart';

class CampoTexto extends StatelessWidget {
  final String text;
  final Widget icon;
  final double w;
  final double h;
  final TextAlignVertical direccionText;
  const CampoTexto(
      {super.key,
      required this.text,
      required this.icon,
      required this.w,
      required this.h,
      required this.direccionText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: direccionText,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(
          fontFamily: 'Acme',
        ),
        suffixIcon: icon,
        constraints: BoxConstraints(maxHeight: h, maxWidth: w),
        filled: true,
        fillColor: blanco,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: negro),
            borderRadius: BorderRadius.circular(12)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

//TextField Contraseña
class CampoTextoPassword extends StatefulWidget {
  const CampoTextoPassword({super.key});

  @override
  State<CampoTextoPassword> createState() => _CampoTextoPasswordState();
}

class _CampoTextoPasswordState extends State<CampoTextoPassword> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      obscureText: passwordVisible,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        hintStyle: const TextStyle(
          fontFamily: 'Acme',
        ),
        suffixIcon: LayoutBuilder(
          builder: (context, constraints) {
            final textField = constraints;
            return IconButton(
              icon: Icon(
                passwordVisible ? Icons.visibility : Icons.visibility_off,
                size: textField.maxHeight * 0.4,
                color: colorIcono1,
              ),
              onPressed: () {
                setState(
                  () {
                    passwordVisible = !passwordVisible;
                  },
                );
              },
            );
          },
        ),
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.1,
            maxWidth: MediaQuery.of(context).size.width * 0.8),
        filled: true,
        fillColor: blanco,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: negro),
            borderRadius: BorderRadius.circular(12)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

//Icono TexField
class IconoTextField extends StatelessWidget {
  final IconData icono;
  final Color color;
  const IconoTextField({super.key, required this.icono, required this.color});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textField = constraints;
        return SizedBox(
          width: textField.maxWidth * 0.08,
          child: Icon(
            icono,
            color: color,
            size: textField.maxHeight * 0.45,
          ),
        );
      },
    );
  }
}
