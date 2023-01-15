import 'package:flutter/material.dart';
import 'package:biblioteca/aplication/use_cases/Modo%20Admin/frm_signup.dart';

class FrmLogin extends StatelessWidget {
  const FrmLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(
          height: 150,
        ),
        const Text(
          'INICIAR SESION',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        const Text(
          'Biblioteca',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(
          height: 40,
        ),
        WTextField(hintText: 'Email', controller: null),
        WTextField(hintText: 'Contraseña', controller: null),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: ElevatedButton(
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Iniciar sesión',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onPressed: () {
              // Aqui debes poner la funcionalidad de iniciar sesion
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('¿Aun no tienes una cuenta?'),
            const SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => FrmSignup()));
              },
              child: const Text(
                'Registrarse',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

class WTextField extends StatelessWidget {
  String hintText;
  TextEditingController? controller;

  WTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        keyboardType: TextInputType.name,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.red),
          ),
          contentPadding: EdgeInsets.all(15.0),
        ),
      ),
    );
  }
}
