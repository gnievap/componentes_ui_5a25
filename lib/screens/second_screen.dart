import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 2')),
      body: Center(
        child: Column(
          children: [
            Text('Dos huskies'),
            Image.asset('assets/img/husky2.jpg', height: 300, width: 300),
            Image.asset('assets/img/husky3.jpg', height: 300, width: 300),
          ],
        ),
      ),
    );
  }
}
