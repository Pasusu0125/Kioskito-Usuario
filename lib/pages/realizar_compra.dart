import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/common/style.dart';
import 'package:kioskito_usuario/structure/botones.dart';
import 'package:kioskito_usuario/structure/cont_text.dart';
import 'package:kioskito_usuario/structure/objects.dart';
import 'package:kioskito_usuario/structure/table.dart';
import 'package:kioskito_usuario/structure/text_field.dart';

class RealizarCompra extends StatefulWidget {
  const RealizarCompra({super.key});

  @override
  State<RealizarCompra> createState() => _RealizarCompraState();
}

class _RealizarCompraState extends State<RealizarCompra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.05),
                  child: ContenedorTexto(
                      w: MediaQuery.of(context).size.width * 0.8,
                      h: MediaQuery.of(context).size.height * 0.1,
                      text: 'Realizar Compra',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxF: 120,
                      minF: 32,
                      maxL: 1,
                      posicionText: Alignment.center),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.001),
                  child: ContenedorTexto(
                      w: MediaQuery.of(context).size.width * 0.8,
                      h: MediaQuery.of(context).size.height * 0.1,
                      text: 'Nombre Pedido',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxF: 32,
                      minF: 14,
                      maxL: 1,
                      posicionText: Alignment.center),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: CampoTexto(
                      text: 'Nombre',
                      icon: const Icon(null),
                      w: MediaQuery.of(context).size.width * 0.7,
                      h: MediaQuery.of(context).size.height * 0.1,
                      direccionText: TextAlignVertical.center),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.001),
                  child: ContenedorTexto(
                      w: MediaQuery.of(context).size.width * 0.8,
                      h: MediaQuery.of(context).size.height * 0.1,
                      text: 'Producto',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxF: 32,
                      minF: 18,
                      maxL: 1,
                      posicionText: Alignment.center),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Btn1(
                    w: MediaQuery.of(context).size.width * 0.1,
                    h: MediaQuery.of(context).size.height * 0.08,
                    color: btn1,
                    onTap: () {},
                    child: const TextoBotones(
                        text: 'Agragar Producto',
                        maxFontSize: 16,
                        minFontSize: 10),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: TableWidget(columns: const [
                    'Nombre Producto',
                    'Cantidad',
                    'Editar',
                    'Eliminar'
                  ], rows: List.empty()),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      bottom: MediaQuery.of(context).size.height * 0.001),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContenedorTexto(
                          w: MediaQuery.of(context).size.width * 0.15,
                          h: MediaQuery.of(context).size.height * 0.1,
                          text: 'Total :',
                          style: Theme.of(context).textTheme.titleMedium,
                          maxF: 32,
                          minF: 18,
                          maxL: 1,
                          posicionText: Alignment.center),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      ContenedorTexto(
                          w: MediaQuery.of(context).size.width * 0.15,
                          h: MediaQuery.of(context).size.height * 0.1,
                          text: '4500',
                          style: Theme.of(context).textTheme.titleMedium,
                          maxF: 32,
                          minF: 18,
                          maxL: 1,
                          posicionText: Alignment.center),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.001),
                  child: ContenedorTexto(
                      w: MediaQuery.of(context).size.width * 0.8,
                      h: MediaQuery.of(context).size.height * 0.1,
                      text: 'Comprobante de Pago',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxF: 32,
                      minF: 14,
                      maxL: 1,
                      posicionText: Alignment.center),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.25,
                      left: MediaQuery.of(context).size.width * 0.25,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Btn1(
                    w: MediaQuery.of(context).size.width * 0.2,
                    h: MediaQuery.of(context).size.height * 0.08,
                    color: btn1,
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload,
                          color: blanco,
                          size: 24,
                        ),
                        const TextoBotones(
                            text: 'Agragar Producto',
                            maxFontSize: 16,
                            minFontSize: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
