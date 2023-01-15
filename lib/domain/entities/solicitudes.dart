class Solicitudes {
  // ignore: unused_field
  String _cod_libro = '',
      _cod_usuario = '',
      _estado = '',
      _fecha_solicitud = '';

  Solicitudes(
    String cod_libro,
    String cod_usuario,
    String estado,
    String fecha_solicitud,
  ) {
    _cod_libro = cod_libro;
    _cod_usuario = cod_usuario;
    _estado = estado;
    _fecha_solicitud = fecha_solicitud;
  }

  String get Cod_libro {
    return _cod_libro;
  }

  set Cod_libro(String lib) {
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

  String get Fecha_solicitud {
    return _fecha_solicitud;
  }

  set Fecha_solicitud(String fec) {
    _fecha_solicitud = fec;
  }
}
