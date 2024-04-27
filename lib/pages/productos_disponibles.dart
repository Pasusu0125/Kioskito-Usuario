import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/structure/botones.dart';
import 'package:kioskito_usuario/structure/cont_text.dart';
import 'package:kioskito_usuario/structure/text_field.dart';

class ProductosDisponibles extends StatefulWidget {
  const ProductosDisponibles({super.key});

  @override
  State<ProductosDisponibles> createState() => _ProductosDisponiblesState();
}

class _ProductosDisponiblesState extends State<ProductosDisponibles> {
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
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.1),
              child: ContenedorTexto(
                  w: MediaQuery.of(context).size.width * 0.8,
                  h: MediaQuery.of(context).size.height * 0.1,
                  text: 'Productos Disponibles',
                  style: Theme.of(context).textTheme.titleMedium,
                  maxF: 100,
                  minF: 24,
                  maxL: 1,
                  posicionText: Alignment.center),
            ),
            CampoTexto(
              text: 'Buscar',
              icon: const Icon(Icons.search),
              w: MediaQuery.of(context).size.width * 0.8,
              h: MediaQuery.of(context).size.height * 0.08,
              direccionText: TextAlignVertical.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Btn1(
                  w: MediaQuery.of(context).size.width * 0.1,
                  h: MediaQuery.of(context).size.height * 0.08,
                  color: btn1,
                  onTap: () {},
                  child: Row(
                    children: [
                      IconoBtn(icno: Icons.list_alt_outlined, color: blanco),
                      const TextoBotones(
                          text: 'Mis Productos',
                          maxFontSize: 14,
                          minFontSize: 4)
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Btn1(
                  w: MediaQuery.of(context).size.width * 0.1,
                  h: MediaQuery.of(context).size.height * 0.08,
                  color: btn1,
                  onTap: () {
                    Navigator.pushNamed(context, '/realizarCompra');
                  },
                  child: Row(
                    children: [
                      IconoBtn(
                          icno: Icons.shopping_cart_outlined, color: blanco),
                      const TextoBotones(
                          text: 'Realizar Compra',
                          maxFontSize: 14,
                          minFontSize: 4)
                    ],
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
