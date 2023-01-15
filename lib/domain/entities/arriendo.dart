class Arriendo {
  // ignore: unused_field
  String _cod_libro = '',
      _cod_usuario = '',
      _estado = '',
      _fecha_devolucion = '',
      _multa = '';

  Arriendo(
    String cod_libro,
    String cod_usuario,
    String estado,
    String fecha_devolucion,
    String multa,
  ) {
    _cod_libro = cod_libro;
    _cod_usuario = cod_usuario;
    _estado = estado;
    _fecha_devolucion = fecha_devolucion;
    _multa = multa;
  }

  String get Cod_libro {
    return _cod_libro;
  }

  set Cod_servicio(String lib) {
    _cod_libro = lib;
  }

  String get Cod_usuario {
    return _cod_usuario;
  }

  set Cod_usuario(String codu) {
    _cod_usuario = codu;
  }

  String get Estado {
    return _estado;
  }

  set Estado(String est) {
    _estado = est;
  }

  String get Fecha_devolucion {
    return _fecha_devolucion;
  }

  set Fecha_devolucion(String fec) {
    _fecha_devolucion = fec;
  }

  String get Multa {
    return _multa;
  }

  set Multa(String mul) {
    _multa = mul;
  }
}
