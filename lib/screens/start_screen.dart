import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes de UI')),
      body: Center(child: Text('App de componentes')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart, color: Colors.deepPurple),
            label: 'Ventana 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.catching_pokemon, color: Colors.blueGrey),
            label: "Ventana 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apple_outlined, color: Colors.red),
            label: 'Ventana 3',
          ),
        ],
      ),
    );
  }
}
