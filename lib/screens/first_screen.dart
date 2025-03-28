import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 1')),
      body: Center(
        child: Column(
          children: [
            Text('Una imagen'),
            Image.asset('assets/img/husky1.jpg', height: 100, width: 100),
            Image.network(
              'https://www.hola.com/horizon/square/2ba9dcaea342-husky-t.jpg?im=Resize=(960),type=downsize',
              fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
