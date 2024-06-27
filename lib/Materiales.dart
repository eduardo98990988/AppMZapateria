import 'package:flutter/material.dart';

class MaterialesScreen extends StatelessWidget {
  const MaterialesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materiales',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materiales'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Acción al seleccionar "Cuero"
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Cuero'),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      // Acción al seleccionar "Pasador"
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Pasador'),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      // Acción al seleccionar "Planta"
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Planta'),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      // Acción al seleccionar "Pintura"
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Pintura'),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      // Acción al seleccionar "Pegamentos Otros"
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Pegamentos Otros'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pielesvelasquez.com%2Fcomo-saber-si-es-cuero-legitimo-o-sintetico%2F&psig=AOvVaw3bPM75tFzd0aAxXDku7n8m&ust=1719593470847000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMj2sIef_IYDFQAAAAAdAAAAABAE',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 16),
                        Text('Cuero Legitimo'),
                        SizedBox(width: 16),
                        Text('20 m'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Proveedores'),
                        SizedBox(width: 16),
                        Text('15/10/2022'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://www.google.com/url?sa=i&url=https%3A%2F%2Finvernauniverse.com%2Fcuero-sintetico-una-alternativa-sostenible-o-una-amenaza-invisible%2F&psig=AOvVaw0GP7qWP3ewWh8lXoxI7Jdb&ust=1719593527909000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNCfkp-f_IYDFQAAAAAdAAAAABAE',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 16),
                        Text('Cuero Sintetico'),
                        SizedBox(width: 16),
                        Text('50 m'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Proveedores'),
                        SizedBox(width: 16),
                        Text('15/10/2022'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://ebrand.pe/cdn/shop/articles/sdfsdf.png?v=1658530302&width=2048',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 16),
                        Text('Cuero Ecologico'),
                        SizedBox(width: 16),
                        Text('250 m'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Proveedores'),
                        SizedBox(width: 16),
                        Text('15/10/2022'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ8xQ2nCaMK2b4C14Dsz01_il5H-H6zvrPhg&s',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 16),
                        Text('Botin para dama'),
                        SizedBox(width: 16),
                        Text('250 m'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Proveedores'),
                        SizedBox(width: 20),
                        Text('15/10/2022'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add model button pressed
                  },
                  child: Text('AÑADIR MODELO'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // Add product button pressed
                  },
                  child: Text('AÑADIR PRODUCTO'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialesScreen());
}
