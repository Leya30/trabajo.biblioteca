import 'package:flutter/material.dart';

class FrmManLibros extends StatelessWidget {
  const FrmManLibros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mantenimiento Libros')),
      body: AdminVersion(),
    );
  }
}

class AdminVersion extends StatelessWidget {
  AdminVersion({super.key});

  final TextEditingController codigo = TextEditingController();
  final TextEditingController categoria = TextEditingController();
  final TextEditingController autor = TextEditingController();
  final TextEditingController isbn = TextEditingController();
  final TextEditingController nombre = TextEditingController();
  final TextEditingController numeroCopias = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'Nuevo',
              ),
              Tab(
                text: 'Lista',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Llene el siguiente formulario:',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    WTextField(
                      controller: codigo,
                      hintText: 'Codigo',
                    ),
                    WTextField(
                      controller: categoria,
                      hintText: 'Categoria',
                    ),
                    WTextField(
                      controller: autor,
                      hintText: 'Autor',
                    ),
                    WTextField(
                      controller: isbn,
                      hintText: 'ISBN',
                    ),
                    WTextField(
                      controller: nombre,
                      hintText: 'Nombre',
                    ),
                    WTextField(
                      controller: numeroCopias,
                      hintText: 'Numero de copias',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () async {},
                        child: const Text('Crear'),
                      ),
                    ),
                  ],
                ),
                const Listado(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Listado extends StatefulWidget {
  const Listado({super.key});
  @override
  State<Listado> createState() => _ListadoState();
}

class _ListadoState extends State<Listado> {
  @override
  Widget build(BuildContext context) {
    return ListView();
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
