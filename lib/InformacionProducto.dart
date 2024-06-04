import 'package:flutter/material.dart';

class InformacionProductoScreen extends StatelessWidget {
  const InformacionProductoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacio  del Producto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Información del Producto Seleccionado',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('images/Botines.png'),
                  ),
                  SizedBox(height: 20),
                  Text("⭐⭐⭐⭐⭐"),
                  Text(
                    'Estos botines estan fabricados con cuero puro y con diferentes materiales que contiene el botin.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
