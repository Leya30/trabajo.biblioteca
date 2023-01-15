class Tipo_usuarios {
  // ignore: unused_field
  String _codigo = '', _nombre = '';

  Tipo_usuarios(
    String codigo,
    String nombre,
  ) {
    _codigo = codigo;
    _nombre = nombre;
  }

  String get Codigo {
    return _codigo;
  }

  set Codigo(String cod) {
    _codigo = cod;
  }

  String get Nombre {
    return _nombre;
  }

  set Nombre(String nom) {
    _nombre = nom;
  }
}
