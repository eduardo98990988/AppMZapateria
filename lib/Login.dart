import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';

final usuarioCtrl = TextEditingController();
final contraCtrl = TextEditingController();
final formKey = GlobalKey<FormState>();

class InicioSesionScreen extends StatelessWidget {
  const InicioSesionScreen({super.key});

  Future<void> sendPostRequest(email, password) async {
    var response = await http.post(Uri.parse("PONER URL DEL BACKEND"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email, "password": password}));

    if (response.statusCode == 200) {
      print("objectx");
    } else {
      print("objecty");
    }
  }

  submitData() async {
    if (formKey.currentState!.validate()) {
      print("Valido");
      print(usuarioCtrl.text);
      print(contraCtrl.text);
      await sendPostRequest(usuarioCtrl.text, contraCtrl.text);
    } else {
      print("Invalido");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'Images/Logo.png',
                  width: 90.0,
                  height: 90.0,
                ),
                TextFormField(
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor ingrese el correo'
                        : null;
                  },
                  controller: usuarioCtrl,
                  decoration: InputDecoration(
                    hintText: 'Ingrese correo',
                    labelText: 'Correo*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor ingrese la contraseña'
                        : null;
                  },
                  controller: contraCtrl,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Ingrese contraseña',
                    labelText: 'Contraseña*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/Menu'); // Agrega el punto y coma aquí
                  },
                  child: Text(
                    'INGRESAR',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
