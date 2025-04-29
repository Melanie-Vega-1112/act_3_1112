import 'package:flutter/material.dart';

//! AnimatedSize

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Seis'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _size = _size == 300 ? 100 : 300;
                });
              },
              child: Container(
                color: Colors.white,
                child: AnimatedSize(
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 1),
                  child: FlutterLogo(size: _size),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla Inicial!'),
            ),
          ],
        ),
      ),
    );
  }
}
