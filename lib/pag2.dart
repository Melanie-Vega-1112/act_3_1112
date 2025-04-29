import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd8d1ff),
        title: const Text(
          'Pantalla 2',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Pantalla Inicial!'),
            ),
          ),
        ],
      ),
    );
  }
}
