import 'package:flutter/material.dart';

const List<String> list = [
  'Desayuno Sencillo',
  'Sachipapa',
  'Porción de Papas',
  'Jugo en agua (mora)'
];

class DropDownListProduct extends StatefulWidget {
  const DropDownListProduct({super.key});

  @override
  State<DropDownListProduct> createState() => _DropDownListProductState();
}

class _DropDownListProductState extends State<DropDownListProduct> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 120,
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}

const List<String> listCant = ['1', '2', '3', '4'];

class DropDownListCant extends StatefulWidget {
  const DropDownListCant({super.key});

  @override
  State<DropDownListCant> createState() => _DropDownListCantState();
}

class _DropDownListCantState extends State<DropDownListCant> {
  String dropdownValue = listCant.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 120,
      initialSelection: listCant.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          listCant.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
