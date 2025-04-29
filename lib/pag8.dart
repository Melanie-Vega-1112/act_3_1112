import 'package:flutter/material.dart';

//! Center con Modal Bottom Sheet

class PantallaOcho extends StatefulWidget {
  const PantallaOcho({Key? key}) : super(key: key);

  @override
  State<PantallaOcho> createState() => _PantallaOchoState();
}

class _PantallaOchoState extends State<PantallaOcho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Ocho'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Abrir Modal Bottom Sheet'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Contenido del Modal',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            child: const Text('Cerrar'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver a Pantalla Inicial'),
            ),
          ],
        ),
      ),
    );
  }
}
