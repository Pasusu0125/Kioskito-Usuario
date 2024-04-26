import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/common/style.dart';
import 'package:kioskito_usuario/structure/botones.dart';
import 'package:kioskito_usuario/structure/cont_text.dart';
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
        child: Column(
          children: [
            ContenedorTexto(
                w: MediaQuery.of(context).size.width * 0.8,
                h: MediaQuery.of(context).size.height * 0.1,
                text: 'Realizar Compra',
                maxF: 100,
                minF: 32,
                maxL: 1,
                style: temaApp.textTheme.titleMedium,
                posicionText: Alignment.center),
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.03,
              text: 'Nombre Pedido',
              maxF: 120,
              minF: 24,
              maxL: 1,
              posicionText: Alignment.center,
              style: temaApp.textTheme.titleSmall,
            ),
            CampoTexto(
                text: 'Nombre',
                icon: const Icon(null),
                w: MediaQuery.of(context).size.width * 0.8,
                h: MediaQuery.of(context).size.height * 0.1,
                direccionText: TextAlignVertical.center),
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.03,
              text: 'Producto',
              maxF: 120,
              minF: 24,
              maxL: 1,
              posicionText: Alignment.center,
              style: temaApp.textTheme.titleSmall,
            ),
            Btn2(
              w: MediaQuery.of(context).size.width * 0.4,
              h: MediaQuery.of(context).size.height * 0.05,
              text: 'Agregar Producto',
              color: btn1,
              w1: 1,
              h1: 1,
              onTap: () {},
              child: const SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContenedorTexto(
                  w: MediaQuery.of(context).size.width * 0.3,
                  h: MediaQuery.of(context).size.height * 0.03,
                  text: 'Total :',
                  maxF: 120,
                  minF: 24,
                  maxL: 1,
                  posicionText: Alignment.center,
                  style: temaApp.textTheme.titleSmall,
                ),
                ContenedorTexto(
                  w: MediaQuery.of(context).size.width * 0.3,
                  h: MediaQuery.of(context).size.height * 0.03,
                  text: '0,0',
                  maxF: 120,
                  minF: 24,
                  maxL: 1,
                  posicionText: Alignment.center,
                  style: temaApp.textTheme.titleSmall,
                ),
              ],
            ),
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.03,
              text: 'Comprobante de Pago',
              maxF: 120,
              minF: 20,
              maxL: 1,
              posicionText: Alignment.center,
              style: temaApp.textTheme.titleSmall,
            ),
            Btn2(
              w: MediaQuery.of(context).size.width * 0.4,
              h: MediaQuery.of(context).size.height * 0.05,
              text: 'Subir Comprobante',
              color: btn1,
              w1: .8,
              h1: 1,
              onTap: () {},
              child: IconoBtn(icno: Icons.upload, color: blanco),
            ),
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.03,
              text: 'Medios disponibles para realizar el pago',
              maxF: 120,
              minF: 18,
              maxL: 1,
              posicionText: Alignment.center,
              style: temaApp.textTheme.titleSmall,
            ),
            TableWidget(
              columns: const ['Medio', 'Cuenta'],
              rows: [
                DataRow(
                  cells: [
                    DataCell(
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: const AutoSizeText(
                          'Nequi',
                          minFontSize: 2,
                          maxFontSize: 18,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    DataCell(
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: const AutoSizeText(
                          '3156799005',
                          minFontSize: 8,
                          maxFontSize: 22,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
