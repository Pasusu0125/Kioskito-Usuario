import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';

class BtnIconoAgregarProducto extends StatelessWidget {
  final op;
  const BtnIconoAgregarProducto({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.add,
        color: btnIconoAgregar,
      ),
    );
  }
}

class BtnIconoEliminarProducto extends StatelessWidget {
  final op;
  const BtnIconoEliminarProducto({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.delete_forever_sharp,
        color: btnIconoEliminar,
      ),
    );
  }
}
