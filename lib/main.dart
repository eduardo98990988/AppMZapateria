import 'package:flutter/material.dart';
import 'package:zapateria/Graficos_Reportes/ReporteDatos_Vendidos.dart';
import 'package:zapateria/Informacion/InformacionProducto.dart';
import 'package:zapateria/Login/Login.dart';
import 'package:zapateria/Materiales/Materiales.dart';
import 'package:zapateria/Menu/Menu.dart';
import 'package:zapateria/Productos/Productos.dart';
import 'package:zapateria/Reportes%20compras%20y%20solicitudes/Reportes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'DLopez';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioSesionScreen(),
        '/Menu': (context) => const MenuScreen(),
        '/Productos': (context) => const ProductScreen(),
        '/InformacionProducto': (context) => const InformacionProductoScreen(),
        '/Materiales': (context) => const MaterialesScreen(),
        '/Reportes': (context) => const ReportesScreen(),
        '/Grafico_Reporte': (context) => const ReporteDatosScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Click Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
