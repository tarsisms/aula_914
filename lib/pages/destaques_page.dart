import 'package:aula_914/data/BD.dart';
import 'package:aula_914/domain/pacote_turistico.dart';
import 'package:aula_914/widget/pacote_turistico_card.dart';
import 'package:aula_914/pages/propaganda_page.dart';
import 'package:flutter/material.dart';

class DestaquesPage extends StatefulWidget {
  const DestaquesPage({Key? key}) : super(key: key);

  @override
  _DestaquesPageState createState() => _DestaquesPageState();
}

class _DestaquesPageState extends State<DestaquesPage> {
  List<PacoteTuristico> lista = BD.listaPacotes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Tops destinos mais buscados',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Corre que tá rolando muita promoção',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const PropagandaPage();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            'EU QUERO!',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF8FF04),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Placeholder(
                    fallbackHeight: 150,
                    fallbackWidth: 100,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            buildListView(context)
          ],
        ),
      ),
    );
  }

  buildListView(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return PacoteTuristicoCard(
          pacoteTuristico: lista[index],
        );
      },
    );

  }
}
