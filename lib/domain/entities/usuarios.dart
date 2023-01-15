class Usuarios {
  // ignore: unused_field
  String _clave = '', _cod_tipo = '', _logeo = '';

  Usuarios(
    String clave,
    String cod_tipo,
    String logeo,
  ) {
    _clave = clave;
    _cod_tipo = cod_tipo;
  }

  String get Clave {
    return _clave;
  }

  set Clave(String cl) {
    _clave = cl;
  }

  String get Logeo {
    return _logeo;
  }

  set Logeo(String log) {
    _logeo = log;
  }
}
