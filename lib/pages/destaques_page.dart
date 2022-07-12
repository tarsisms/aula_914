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
  PacoteTuristico pacote1 = PacoteTuristico(
    imagem:
        'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    titulo: 'Pacote Cancún 2022/2023',
    transporte: 'Aéreo - Hotel All inclusive',
    numDiarias: 5,
    numPessoas: 2,
    numParcelas: 6,
    precoAntigo: 6819,
    precoAtual: 2819,
  );
  PacoteTuristico pacote2 = PacoteTuristico(
    imagem:
        'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
    titulo: 'Pacote Maragogi 2023',
    transporte: 'Hotel All inclusive',
    numDiarias: 7,
    numPessoas: 3,
    numParcelas: 12,
    precoAntigo: 4819,
    precoAtual: 819,
  );

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
            PacoteTuristicoCard(pacoteTuristico: pacote1),
            PacoteTuristicoCard(pacoteTuristico: pacote2),
          ],
        ),
      ),
    );
  }
}
