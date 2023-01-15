import 'package:flutter/material.dart';

class FrmAdminPrincipal extends StatelessWidget {
  const FrmAdminPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WElevatedButton(onPressed: () {}, label: 'Mantenimiento Libro'),
            WElevatedButton(onPressed: () {}, label: 'Solicitudes'),
            WElevatedButton(onPressed: () {}, label: 'Devoluciones'),
          ],
        ),
      ),
    );
  }
}

class WElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const WElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 80,
          child: Text(
            label,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
