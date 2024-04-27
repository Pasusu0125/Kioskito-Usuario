import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/structure/botones.dart';
import 'package:kioskito_usuario/structure/cont_text.dart';
import 'package:kioskito_usuario/structure/drop_down_list.dart';

class AlertDialogAddProduct extends StatefulWidget {
  const AlertDialogAddProduct({super.key});

  @override
  State<AlertDialogAddProduct> createState() => _AlertDialogAddProductState();
}

class _AlertDialogAddProductState extends State<AlertDialogAddProduct> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: fondo,
      title: ContenedorTexto(
          w: MediaQuery.of(context).size.width * 0.8,
          h: MediaQuery.of(context).size.height * 0.05,
          text: 'Agregar Producto',
          style: Theme.of(context).textTheme.titleSmall,
          maxF: 36,
          minF: 30,
          maxL: 1,
          posicionText: Alignment.center),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.3,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var tamanioAlert = constraints;
            return Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(bottom: tamanioAlert.maxHeight * 0.05),
                  child: Container(
                    decoration: BoxDecoration(
                        color: btn1, borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: btn1,
                                borderRadius: BorderRadius.circular(12)),
                            child: ContenedorTexto(
                                w: tamanioAlert.maxWidth * 0.5,
                                h: tamanioAlert.maxHeight * 0.2,
                                text: 'Producto',
                                style: Theme.of(context).textTheme.displaySmall,
                                maxF: 18,
                                minF: 14,
                                maxL: 1,
                                posicionText: Alignment.center),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: btn1,
                                borderRadius: BorderRadius.circular(12)),
                            child: ContenedorTexto(
                                w: tamanioAlert.maxWidth * 0.5,
                                h: tamanioAlert.maxHeight * 0.1,
                                text: 'Cantidad',
                                style: Theme.of(context).textTheme.displaySmall,
                                maxF: 18,
                                minF: 14,
                                maxL: 1,
                                posicionText: Alignment.center),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        color: blanco, child: const DropDownListProduct()),
                    SizedBox(
                      width: tamanioAlert.maxWidth * 0.05,
                    ),
                    Container(color: blanco, child: const DropDownListCant()),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: tamanioAlert.maxHeight * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Btn1(
                        width: tamanioAlert.maxWidth * 0.2,
                        heigth: tamanioAlert.maxHeight * 0.15,
                        color: btn2,
                        onTap: () {},
                        child: const TextoBotones(
                            text: 'Cancelar', maxFontSize: 22, minFontSize: 16),
                      ),
                      SizedBox(
                        width: tamanioAlert.maxWidth * 0.1,
                      ),
                      Btn1(
                        width: tamanioAlert.maxWidth * 0.2,
                        heigth: tamanioAlert.maxHeight * 0.15,
                        color: btn1,
                        onTap: () {
                          Navigator.pushNamed(context, '/realizarCompra');
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: fondo,
                              title: ContenedorTexto(
                                  w: MediaQuery.of(context).size.width * .7,
                                  h: MediaQuery.of(context).size.height * 0.1,
                                  text: '¡Producto Agregado!',
                                  style: Theme.of(context).textTheme.titleSmall,
                                  maxF: 44,
                                  minF: 22,
                                  maxL: 1,
                                  posicionText: Alignment.center),
                            ),
                          );
                        },
                        child: const TextoBotones(
                            text: 'Agregar', maxFontSize: 22, minFontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
