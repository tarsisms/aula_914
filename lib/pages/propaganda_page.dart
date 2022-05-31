

import 'package:flutter/material.dart';

class PropagandaPage extends StatefulWidget {
  const PropagandaPage({Key? key}) : super(key: key);

  @override
  _PropagandaPageState createState() => _PropagandaPageState();
}

class _PropagandaPageState extends State<PropagandaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Página Propaganda',
        style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
