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

  submitData(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      print("Valido");
      print(usuarioCtrl.text);
      print(contraCtrl.text);
      await sendPostRequest(usuarioCtrl.text, contraCtrl.text);
      Navigator.pushNamed(context, '/Menu');
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
                Image.network(
                  'data:image/jpeg;base64,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', // Reemplaza con la URL de la imagen que quieres usar
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
                    submitData(context);
                  },
                  child: Text(
                    'INGRESAR',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 33, 243, 145),
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/reset-password');
                    },
                    child: Text(
                      '¿Olvidaste tu contraseña?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
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
