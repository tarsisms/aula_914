import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFF10397B),
        title: Text(
          'Pesquisar',
          style: TextStyle(fontSize: 24),
        ),
      ),
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
                        Text(
                          'Tops destinos mais buscados',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Corre que tá rolando muita promoção',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
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
                  SizedBox(width: 24),
                  Placeholder(
                    fallbackHeight: 150,
                    fallbackWidth: 100,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            buildCard(
              imagem:
              'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
              titulo: 'Pacote Cancún 2022/2023',
              transporte: 'Aéreo - Hotel All inclusive',
              numDiarias: 5,
              numPessoas: 2,
              numParcelas: 6,
              precoAntigo: 6819,
              precoAtual: 2819,
            ),
            buildCard(
              imagem:
                  'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
              titulo: 'Pacote Maragogi 2023',
              transporte: 'Hotel All inclusive',
              numDiarias: 7,
              numPessoas: 3,
              numParcelas: 12,
              precoAntigo: 4819,
              precoAtual: 819,
            ),

          ],
        ),
      ),
    );
  }

  buildCard({
    required String imagem,
    required String titulo,
    required String transporte,
    required int numDiarias,
    required int numPessoas,
    required double precoAntigo,
    required double precoAtual,
    required int numParcelas,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8),
            ),
            child: Image.network(imagem),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(transporte),
                SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.wb_sunny_outlined),
                    const SizedBox(width: 4),
                    Text('$numDiarias Diárias'),
                    const SizedBox(width: 8),
                    const Icon(Icons.person_outline),
                    const SizedBox(width: 4),
                    Text('$numPessoas Pessoas'),
                  ],
                ),
                SizedBox(height: 8),
                Text('A partir de R\$ $precoAntigo'),
                Text(
                  'R\$ $precoAtual',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Cancelamento Grátis!',
                  style: TextStyle(
                    color: Colors.green[700],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
