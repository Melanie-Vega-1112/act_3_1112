import 'package:flutter/material.dart';
import 'package:vegarutas/inicial.dart';
import 'package:vegarutas/pag2.dart';
import 'package:vegarutas/pag3.dart';
import 'package:vegarutas/pag4.dart';
import 'package:vegarutas/pag5.dart';
import 'package:vegarutas/pag6.dart';
import 'package:vegarutas/pag7.dart';
import 'package:vegarutas/pag8.dart';
import 'package:vegarutas/pag9.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
      },
    );
  }
}
