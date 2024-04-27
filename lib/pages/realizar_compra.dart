import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/common/style.dart';
import 'package:kioskito_usuario/structure/alet_diaolog-add_product.dart';
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
                      bottom: MediaQuery.of(context).size.height * 0.03),
                  child: ContenedorTexto(
                      w: MediaQuery.of(context).size.width * 0.8,
                      h: MediaQuery.of(context).size.height * 0.06,
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
                      h: MediaQuery.of(context).size.height * 0.06,
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
                      h: MediaQuery.of(context).size.height * 0.05,
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
                    width: MediaQuery.of(context).size.width * 0.1,
                    heigth: MediaQuery.of(context).size.height * 0.04,
                    color: btn1,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialogAddProduct(),
                      );
                    },
                    child: const TextoBotones(
                        text: 'Agragar Producto',
                        maxFontSize: 16,
                        minFontSize: 10),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.14,
                  child: TableWidget(
                    columns: const ['Nombre', 'Cantidad', 'Editar', 'Eliminar'],
                    rows: [
                      DataRow(
                        cells: [
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
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: const AutoSizeText(
                                '1',
                                minFontSize: 12,
                                maxFontSize: 18,
                              ),
                            ),
                          ),
                          DataCell(Container(
                            alignment: Alignment.center,
                            child: BtnIconoAgregarProducto(
                              onTap: () {},
                            ),
                          )),
                          DataCell(Container(
                            alignment: Alignment.center,
                            child: BtnIconoEliminarProducto(
                              onTap: () {},
                            ),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.001),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContenedorTexto(
                          w: MediaQuery.of(context).size.width * 0.15,
                          h: MediaQuery.of(context).size.height * 0.06,
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
                          h: MediaQuery.of(context).size.height * 0.06,
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
                      h: MediaQuery.of(context).size.height * 0.06,
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
                    width: MediaQuery.of(context).size.width * 0.2,
                    heigth: MediaQuery.of(context).size.height * 0.05,
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
                            text: 'Subir Imagen',
                            maxFontSize: 16,
                            minFontSize: 10),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.001),
                  child: ContenedorTexto(
                      w: MediaQuery.of(context).size.width * 0.8,
                      h: MediaQuery.of(context).size.height * 0.06,
                      text: 'Medios disponibles para realizar el pago',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxF: 32,
                      minF: 14,
                      maxL: 1,
                      posicionText: Alignment.center),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TableWidget(
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
                                minFontSize: 12,
                                maxFontSize: 18,
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: const AutoSizeText(
                                '3156799005',
                                minFontSize: 12,
                                maxFontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      bottom: MediaQuery.of(context).size.height * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Btn1(
                        width: MediaQuery.of(context).size.width * 0.3,
                        heigth: MediaQuery.of(context).size.height * 0.06,
                        color: btn1,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: fondo,
                              title: ContenedorTexto(
                                  w: MediaQuery.of(context).size.width * .8,
                                  h: MediaQuery.of(context).size.height * 0.05,
                                  text: 'Aviso',
                                  style: Theme.of(context).textTheme.titleSmall,
                                  maxF: 62,
                                  minF: 32,
                                  maxL: 1,
                                  posicionText: Alignment.center),
                              content: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    var tamanioAlert = constraints;
                                    return Column(
                                      children: [
                                        ContenedorTextoGrande(
                                            w: tamanioAlert.maxWidth * .8,
                                            h: tamanioAlert.maxHeight * .5,
                                            text:
                                                '¿Está seguro de cancelar su compra?',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall,
                                            maxF: 28,
                                            minF: 20,
                                            maxL: 2,
                                            posicionText: Alignment.center),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top:
                                                  tamanioAlert.maxHeight * 0.2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Btn1(
                                                width:
                                                    tamanioAlert.maxWidth * 0.2,
                                                heigth: tamanioAlert.maxHeight *
                                                    0.25,
                                                color: btn1,
                                                onTap: () {},
                                                child: const TextoBotones(
                                                    text: 'Cancelar',
                                                    maxFontSize: 22,
                                                    minFontSize: 16),
                                              ),
                                              SizedBox(
                                                width:
                                                    tamanioAlert.maxWidth * 0.1,
                                              ),
                                              Btn1(
                                                width:
                                                    tamanioAlert.maxWidth * 0.2,
                                                heigth: tamanioAlert.maxHeight *
                                                    0.25,
                                                color: btn1,
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      '/productosDisponibles');
                                                },
                                                child: const TextoBotones(
                                                    text: 'Aceptar',
                                                    maxFontSize: 22,
                                                    minFontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        child: const TextoBotones(
                            text: 'Cancelar', maxFontSize: 20, minFontSize: 12),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Btn1(
                        width: MediaQuery.of(context).size.width * 0.3,
                        heigth: MediaQuery.of(context).size.height * 0.06,
                        color: btn1,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: fondo,
                              title: ContenedorTexto(
                                  w: MediaQuery.of(context).size.width * .9,
                                  h: MediaQuery.of(context).size.height * 0.05,
                                  text: 'Aviso',
                                  style: Theme.of(context).textTheme.titleSmall,
                                  maxF: 62,
                                  minF: 32,
                                  maxL: 1,
                                  posicionText: Alignment.center),
                              content: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    var tamanioAlert = constraints;
                                    return Column(
                                      children: [
                                        ContenedorTextoGrande(
                                            w: tamanioAlert.maxWidth * .9,
                                            h: tamanioAlert.maxHeight * .7,
                                            text:
                                                """¿Está seguro de proceder con esta compra? Sería prudente verificar que todos los detalles sean correctos antes de confirmarla.Tenga en cuenta que una vez completada la transacción, no será posible realizar cambios.""",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall,
                                            maxF: 28,
                                            minF: 20,
                                            maxL: 11,
                                            posicionText: Alignment.center),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top:
                                                  tamanioAlert.maxHeight * 0.1),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Btn1(
                                                width:
                                                    tamanioAlert.maxWidth * 0.2,
                                                heigth: tamanioAlert.maxHeight *
                                                    0.15,
                                                color: btn1,
                                                onTap: () {},
                                                child: const TextoBotones(
                                                    text: 'Cancelar',
                                                    maxFontSize: 22,
                                                    minFontSize: 16),
                                              ),
                                              SizedBox(
                                                width:
                                                    tamanioAlert.maxWidth * 0.1,
                                              ),
                                              Btn1(
                                                width:
                                                    tamanioAlert.maxWidth * 0.2,
                                                heigth: tamanioAlert.maxHeight *
                                                    0.15,
                                                color: btn1,
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      '/productosDisponibles');
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        AlertDialog(
                                                      backgroundColor: fondo,
                                                      title: ContenedorTexto(
                                                          w: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              .7,
                                                          h: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.1,
                                                          text:
                                                              '¡Compra exitosa!',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .titleSmall,
                                                          maxF: 44,
                                                          minF: 22,
                                                          maxL: 1,
                                                          posicionText:
                                                              Alignment.center),
                                                    ),
                                                  );
                                                },
                                                child: const TextoBotones(
                                                    text: 'Aceptar',
                                                    maxFontSize: 22,
                                                    minFontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        child: const TextoBotones(
                            text: 'Comprar', maxFontSize: 20, minFontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
