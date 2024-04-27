import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';

class BtnIconoAgregarProducto extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoAgregarProducto({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.add,
        color: btnIconoAgregar,
      ),
    );
  }
}

class BtnIconoEliminarProducto extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoEliminarProducto({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.delete_forever_sharp,
        color: btnIconoEliminar,
      ),
    );
  }
}

class BtnIconoInfo extends StatelessWidget {
  const BtnIconoInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, '/infoPedido');
      },
      icon: Icon(
        Icons.info,
        color: btnIconoInfo,
      ),
    );
  }
}
