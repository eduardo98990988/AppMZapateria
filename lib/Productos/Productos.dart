import 'package:flutter/material.dart';
import 'package:zapateria/Informacion/InformacionProducto.dart';

// Definición de una clase Producto
class Producto {
  String nombre;
  String imageUrl;

  Producto({required this.nombre, required this.imageUrl});
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Producto',
      home: ProductScreen(),
    );
  }
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
              itemCount: productos.length,
              itemBuilder: (context, index) {
                // Obtener el producto actual
                Producto producto = productos[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => InformacionProductoScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.network(
                          producto.imageUrl,
                          height: 120,
                          width: 120,
                          errorBuilder: (context, error, stackTrace) {
                            return Text('Error al cargar la imagen');
                          },
                        ),
                        SizedBox(height: 8),
                        Text(producto.nombre),
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

  // Lista de productos
  final List<Producto> productos = [
    Producto(
      nombre: 'Botines',
      imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fco.pinterest.com%2Fledyshero%2Fbotines-negros%2F&psig=AOvVaw3mt9zqzGyAaZvieBlirYaQ&ust=1719590125859000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMilkeuS_IYDFQAAAAAdAAAAABAE',
    ),
    Producto(
      nombre: 'Zapatos',
      imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gettyimages.es%2Ffotos%2Fzapato-de-vestir&psig=AOvVaw15DD0WEcG2OCPBIyRYR_ea&ust=1719590313060000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMj_xaOT_IYDFQAAAAAdAAAAABAE',
    ),
    Producto(
      nombre: 'Producto 3',
      imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.oechsle.pe%2Fbalerinas-para-mujer-moleca-vv-5301-309-13488-blanco-2353290%2Fp&psig=AOvVaw3YPRYjyhBjPALjidIuPDQO&ust=1719590390821000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNjCrsiT_IYDFQAAAAAdAAAAABAE',
    ),
    // Puedes añadir más productos aquí
  ];
}
