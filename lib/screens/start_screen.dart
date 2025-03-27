import 'package:componentes/screens/first_screen.dart';
import 'package:componentes/screens/second_screen.dart';
import 'package:componentes/screens/third_screen.dart';
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
        onTap: (index) {
          print('indice de ventana: $index');
          if (index == 0) {
            setState(() {
              _selectedIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstScreen()),
              );
            });
          } else if (index == 1) {
            setState(() {
              _selectedIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            });
          } else if (index == 2) {
            setState(() {
              _selectedIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdScreen()),
              );
            });
          }
        },
      ),
    );
  }
}
