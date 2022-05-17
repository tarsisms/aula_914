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
          style: TextStyle(
            fontSize: 24
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
                padding: const EdgeInsets.all(16),
                color: Colors.purple,
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
                )),
            SizedBox(height: 16),
            Card(
              child: Column(
                children: [
                  Placeholder(fallbackHeight: 150),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pacote Cancún 2022',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Aéreo - Hotel All inclusive'),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.wb_sunny_outlined),
                            SizedBox(width: 4),
                            Text('05 Diárias'),
                            SizedBox(width: 8),
                            Icon(Icons.person_outline),
                            SizedBox(width: 4),
                            Text('01 Pessoa'),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text('A partir de R\$ 6816'),
                        Text(
                          'R\$ 3.749',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
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
            ),
          ],
        ),
      ),
    );
  }
}
