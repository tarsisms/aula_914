

import 'package:aula_914/data/BD.dart';
import 'package:aula_914/domain/pacote_turistico.dart';
import 'package:aula_914/pages/propaganda_page.dart';
import 'package:aula_914/widget/pacote_turistico_card.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<PacoteTuristico> lista = BD.listaPacotes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: buildListView(context)
      ),
    );
  }

  buildListView(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.38
      ),
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return PacoteTuristicoCard(
          pacoteTuristico: lista[index],
        );
      },
    );
  }
}
