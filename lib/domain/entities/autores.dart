class Autores {
  // ignore: unused_field
  String _apellidos = '', _nombre = '';

  Autores(
    String apellidos,
    String nombre,
  ) {
    _apellidos = apellidos;
    _nombre = nombre;
  }

  String get Apellidos {
    return _apellidos;
  }

  set Apellidos(String ap) {
    _apellidos = ap;
  }

  String get Nombre {
    return _nombre;
  }

  set Nombre(String nom) {
    _nombre = nom;
  }
}
