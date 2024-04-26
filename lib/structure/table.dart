import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_usuario/common/paleta.dart';
import 'package:kioskito_usuario/common/style.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
    required this.columns,
    required this.rows,
    this.headerColor,
  });
  final List<String> columns;
  final List<DataRow> rows;
  final Color? headerColor;

  @override
  Widget build(BuildContext context) {
    final verticalScrollController = ScrollController();
    final horizontalScrollController = ScrollController();
    return AdaptiveScrollbar(
      sliderDefaultColor: Colors.grey.withOpacity(0.7),
      sliderActiveColor: Colors.grey,
      controller: verticalScrollController,
      child: AdaptiveScrollbar(
        controller: horizontalScrollController,
        position: ScrollbarPosition.bottom,
        sliderDefaultColor: Colors.grey.withOpacity(0.7),
        sliderActiveColor: Colors.grey,
        child: SingleChildScrollView(
          controller: verticalScrollController,
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            controller: horizontalScrollController,
            scrollDirection: Axis.horizontal,
            child: DataTable(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.5, 0.2],
                    colors: [headingTabla, blanco]),
              ),
              border: TableBorder(
                horizontalInside: const BorderSide(color: Colors.white),
                bottom: BorderSide(color: Colors.grey.shade300, width: 1.2),
              ),
              dividerThickness: .1,
              dataRowColor: const MaterialStatePropertyAll(Colors.white),
              columns: columns
                  .map((e) => DataColumn(label: TableLabel(text: e)))
                  .toList(),
              rows: rows,
            ),
          ),
        ),
      ),
    );
  }
}

//Titulo tabla

class TableLabel extends StatelessWidget {
  final String text;
  const TableLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: temaApp.textTheme.displaySmall,
      textAlign: TextAlign.center,
    );
  }
}
