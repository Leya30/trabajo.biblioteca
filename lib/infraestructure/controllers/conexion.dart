import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:biblioteca/infraestructure/entity_mangers/e_tipo_usuario.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getLista() async {
//Letura de datos
  List pe = [];
  List cl = [];
  CollectionReference collectionReference = db.collection('tipo_usuarios');
  QuerySnapshot querySnapshot = await collectionReference.get();
  querySnapshot.docs.forEach((element) {
    pe.add(element.data());
  });
  Future.delayed(const Duration(seconds: 5));
  return pe;
}

Future<void> addDato(String nombre) async {
  await db.collection('tipo_usuarios').add({'nombre': nombre});
}

class conexion {
  FirebaseFirestore db = FirebaseFirestore.instance;
  Future<List> select(String tabla) async {
    List pe = [];
    CollectionReference collectionReference = db.collection(tabla);
    QuerySnapshot querySnapshot = await collectionReference.get();
    querySnapshot.docs.forEach((element) {
      pe.add(element.data());
    });
    Future.delayed(const Duration(seconds: 5));
    return pe;
  }

  Future<void> addDato(String tabla, dato) async {
    await db.collection(tabla).add({'nombre': dato.Nombre});
  }
}
