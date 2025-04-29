import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8a60fd),
        title: const Center(
          child: Text(
            'Pantalla inicial',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
              child: const Text('Pantalla 2'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
              child: const Text('Pantalla 3'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla4'),
              child: const Text('Pantalla 4'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla5'),
              child: const Text('Pantalla 5'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla6'),
              child: const Text('Pantalla 6'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla7'),
              child: const Text('Pantalla 7'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla8'),
              child: const Text('Pantalla 8'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla9'),
              child: const Text('Pantalla 9'),
            ),
          ],
        ),
      ),
    );
  }
}
