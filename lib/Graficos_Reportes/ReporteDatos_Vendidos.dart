import 'package:flutter/material.dart';

class ReporteDatosScreen extends StatelessWidget {
  const ReporteDatosScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reporte Datos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> compras = [];
  List<Map<String, dynamic>> servicios = [];

  @override
  void initState() {
    super.initState();
    // Aquí llamas a tu backend para obtener las compras y servicios
    fetchComprasYServicios();
  }

  void fetchComprasYServicios() async {
    // Ejemplo de datos estáticos, reemplaza esto con tu lógica para llamar a tu backend
    final fetchedCompras = [
      {
        "id": 1,
        "producto": "Zapato Deportivo",
        "precio": 50.0,
        "fecha": "2023-06-01"
      },
      {
        "id": 2,
        "producto": "Zapato Formal",
        "precio": 80.0,
        "fecha": "2023-07-15"
      },
    ];

    final fetchedServicios = [
      {"id": 1, "servicio": "Limpieza", "precio": 10.0, "fecha": "2023-06-05"},
      {
        "id": 2,
        "servicio": "Reparación",
        "precio": 25.0,
        "fecha": "2023-08-01"
      },
    ];

    setState(() {
      compras = fetchedCompras;
      servicios = fetchedServicios;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resumen de Compras y Servicios'),
      ),
      body: ListView(
        children: [
          Section(title: 'Compras', items: compras, itemType: 'compra'),
          Section(title: 'Servicios', items: servicios, itemType: 'servicio'),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> items;
  final String itemType;

  Section({required this.title, required this.items, required this.itemType});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      children: items
          .map((item) => ListTile(
                title: Text(
                    itemType == 'compra' ? item['producto'] : item['servicio']),
                subtitle: Text('Fecha: ${item['fecha']}'),
                trailing: Text('Precio: \$${item['precio']}'),
              ))
          .toList(),
    );
  }
}
