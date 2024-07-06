import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.person),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '¿CÓMO PODEMOS AYUDARLO?',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (String? value) {
                      return (value != null && value.isEmpty)
                          ? 'Por favor ingrese el correo'
                          : null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Buscar el producto',
                      label: Text('Producto'),
                      icon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              'PRODUCTOS',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Productos');
                            },
                            child: Text('Ver Productos'),
                          ),
                          SizedBox(height: 20),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              'Materiales',
                              style: TextStyle(
                                color: Color(0xff070707),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Materiales');
                            },
                            child: Text('Ver Materiales'),
                          ),
                           SizedBox(height: 20),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              'ReporteDatos',
                              style: TextStyle(
                                color: Color(0xff070707),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/ReporteDatos');
                            },
                            child: Text('Ver Reportes'),
                          ),
                           SizedBox(height: 20),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              'ReportesCompras',
                              style: TextStyle(
                                color: Color(0xff070707),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Reportes');
                            },
                            child: Text('Ver Reportes'),
                          ),
                           SizedBox(height: 20),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              'ResumenCompra',
                              style: TextStyle(
                                color: Color(0xff070707),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/ResumenCompra');
                            },
                            child: Text('Ver Resumen'),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
