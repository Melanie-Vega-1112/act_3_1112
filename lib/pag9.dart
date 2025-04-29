import 'package:flutter/material.dart';

//! Chip

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  bool _showChip = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Nueve'),
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
            if (_showChip)
              Chip(
                label: const Text("Este es un Chip de Flutter"),
                deleteIcon: const Icon(Icons.close),
                onDeleted: () {
                  setState(() {
                    _showChip = false;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Chip eliminado')),
                  );
                },
              ),
            if (!_showChip)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showChip = true;
                  });
                },
                child: const Text('Mostrar Chip nuevamente'),
              ),
            const SizedBox(height: 30),
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
