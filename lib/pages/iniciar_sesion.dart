import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/common/style.dart';
import 'package:kioskito_usuario/structure/botones.dart';
import 'package:kioskito_usuario/structure/cont_text.dart';
import 'package:kioskito_usuario/structure/text_field.dart';

import 'package:lottie/lottie.dart';

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({super.key});

  @override
  State<IniciarSesion> createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.03,
                        right: MediaQuery.of(context).size.width * 0.15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Lottie.network(
                        'https://lottie.host/d4b2cd6a-a3c7-428c-897d-286c6ccafd6d/ZKxVL019CA.json',
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                  ),
                  ContenedorTexto(
                      maxL: 1,
                      posicionText: Alignment.center,
                      style: temaApp.textTheme.titleLarge,
                      w: MediaQuery.of(context).size.width * 0.6,
                      h: MediaQuery.of(context).size.height * 0.15,
                      text: 'Kioskito',
                      maxF: 140,
                      minF: 20)
                ],
              ),
              CampoTexto(
                direccionText: TextAlignVertical.center,
                w: MediaQuery.of(context).size.width * 0.8,
                h: MediaQuery.of(context).size.height * 0.08,
                text: 'Usuario',
                icon: IconoTextField(
                  color: colorIcono1,
                  icono: Icons.person,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const CampoTextoPassword(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Btn1(
                color: btn1,
                w: MediaQuery.of(context).size.width * 0.3,
                h: MediaQuery.of(context).size.height * 0.1,
                child: const TextoBotones(text: 'Iniciar Sesión'),
                onTap: () {
                  Navigator.pushNamed(context, '/productosDisponibles');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
