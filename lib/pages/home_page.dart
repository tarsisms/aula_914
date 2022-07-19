import 'package:aula_914/pages/destaques_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const DestaquesPage(),
    const Center(child: Text('Pagina 2', style: TextStyle(fontSize: 36))),
    const Center(child: Text('Pagina 3', style: TextStyle(fontSize: 36))),
    const Center(child: Text('Pagina 4', style: TextStyle(fontSize: 36))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFF10397B),
        title: const Text(
          'Pesquisar',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFFE81F7C),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.compass),
            label: 'DESTAQUES',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag),
            label: 'PACOTES',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'PERFIL',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'MAIS',
          ),
        ],
      ),
    );
  }
}
