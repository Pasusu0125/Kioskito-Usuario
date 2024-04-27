import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/structure/cont_text.dart';
import 'package:kioskito_usuario/structure/table.dart';

class MisPedidosInfo extends StatefulWidget {
  const MisPedidosInfo({super.key});

  @override
  State<MisPedidosInfo> createState() => _MisPedidosInfoState();
}

class _MisPedidosInfoState extends State<MisPedidosInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      appBar: AppBar(
        backgroundColor: fondo,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.1,
              text: 'Información',
              style: Theme.of(context).textTheme.titleSmall,
              maxF: 100,
              minF: 42,
              maxL: 1,
              posicionText: Alignment.center,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.98,
              height: MediaQuery.of(context).size.height * 0.14,
              child: TableWidget(
                columns: const [
                  'Id',
                  'Nombre Usuario',
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .03,
                          child: const AutoSizeText(
                            '1',
                            minFontSize: 12,
                            maxFontSize: 18,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: const AutoSizeText(
                            'Natalia Daniela Martínez Córdoba',
                            minFontSize: 12,
                            maxFontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ContenedorTexto(
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.1,
              text: 'Productos',
              style: Theme.of(context).textTheme.titleSmall,
              maxF: 100,
              minF: 36,
              maxL: 1,
              posicionText: Alignment.center,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.98,
              height: MediaQuery.of(context).size.height * 0.14,
              child: TableWidget(
                columns: const ['Id', 'Producto', 'Cantidad'],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .03,
                          child: const AutoSizeText(
                            '1',
                            minFontSize: 12,
                            maxFontSize: 18,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const AutoSizeText(
                            'Salchipapa',
                            minFontSize: 12,
                            maxFontSize: 16,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .03,
                          child: const AutoSizeText(
                            '1',
                            minFontSize: 12,
                            maxFontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
