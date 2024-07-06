import 'package:flutter/material.dart';

class ReportesScreen extends StatelessWidget {
  const ReportesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zapatería',
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
  final List<Map<String, String>> _compras = [];
  final List<Map<String, String>> _solicitudes = [];

  final TextEditingController _itemController = TextEditingController();
  final TextEditingController _cantidadController = TextEditingController();
  final TextEditingController _clienteController = TextEditingController();

  void _addCompra() {
    setState(() {
      _compras.add({
        'item': _itemController.text,
        'cantidad': _cantidadController.text,
      });
      _itemController.clear();
      _cantidadController.clear();
    });
  }

  void _addSolicitud() {
    setState(() {
      _solicitudes.add({
        'cliente': _clienteController.text,
        'item': _itemController.text,
        'cantidad': _cantidadController.text,
      });
      _clienteController.clear();
      _itemController.clear();
      _cantidadController.clear();
    });
  }

  void _showReport() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Reporte'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Compras:'),
                ..._compras.map((compra) {
                  return Text(
                      '${compra['item']} - ${compra['cantidad']} unidades');
                }).toList(),
                SizedBox(height: 10),
                Text('Solicitudes:'),
                ..._solicitudes.map((solicitud) {
                  return Text(
                      '${solicitud['cliente']} solicitó ${solicitud['item']} - ${solicitud['cantidad']} unidades');
                }).toList(),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zapatería'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _itemController,
              decoration: InputDecoration(labelText: 'Item'),
            ),
            TextField(
              controller: _cantidadController,
              decoration: InputDecoration(labelText: 'Cantidad'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _clienteController,
              decoration:
                  InputDecoration(labelText: 'Cliente (para solicitudes)'),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _addCompra,
                  child: Text('Agregar Compra'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _addSolicitud,
                  child: Text('Agregar Solicitud'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _showReport,
                  child: Text('Generar Reporte'),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Text('Compras:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  ..._compras.map((compra) {
                    return ListTile(
                      title: Text('${compra['item']}'),
                      subtitle: Text('Cantidad: ${compra['cantidad']}'),
                    );
                  }).toList(),
                  SizedBox(height: 10),
                  Text('Solicitudes:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  ..._solicitudes.map((solicitud) {
                    return ListTile(
                      title: Text('${solicitud['cliente']}'),
                      subtitle: Text(
                          'Item: ${solicitud['item']} - Cantidad: ${solicitud['cantidad']}'),
                    );
                  }).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
