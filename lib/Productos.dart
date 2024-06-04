import 'package:flutter/material.dart';
import 'package:zapateria/InformacionProducto.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                // Utilizar el operador % para alternar entre las imágenes
                String assetName = index % 3 == 0
                    ? 'Images/Botines.png'
                    : (index % 3 == 1
                        ? 'Images/Botines2.png'
                        : 'Images/Botines.png');

                return GestureDetector(
                  onTap: () {
                    //PONER EL ARCHIVO INFORMACION
                    // Navegar a la página de detalles del producto cuando se toca la imagen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => InformacionProductoScreen()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.asset(assetName, height: 120, width: 120),
                        SizedBox(height: 8),
                        Text("BOTINES"),
                        SizedBox(height: 8),
                        Text(
                          "⭐⭐⭐⭐",
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(211, 172, 12, 212)),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
