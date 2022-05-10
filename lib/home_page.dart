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
        body: ListView(
      children: [
        Container(
            margin: const EdgeInsets.all(16),
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
      ],
    ));
  }
}
