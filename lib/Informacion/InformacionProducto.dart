import 'package:flutter/material.dart';

class InformacionProductoScreen extends StatelessWidget {
  const InformacionProductoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información del Producto'),
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
                    child: Image.network(
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fco.pinterest.com%2Fledyshero%2Fbotines-negros%2F&psig=AOvVaw3mt9zqzGyAaZvieBlirYaQ&ust=1719590125859000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMilkeuS_IYDFQAAAAAdAAAAABAE'),
                  ),
                  SizedBox(height: 20),
                  Text("⭐⭐⭐⭐⭐"),
                  Text(
                    'Estos botines están fabricados con cuero puro y con diferentes materiales que contiene el botín.',
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
