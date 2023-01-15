import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FrmManSolicitudes extends StatelessWidget {
  const FrmManSolicitudes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitudes'),
      ),
      body: Center(
        child: Text('Solicitudes'),
      ),
    );
  }
}
