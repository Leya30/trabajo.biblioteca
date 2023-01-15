class Libros {
  // ignore: unused_field
  String _cod_autor = '', _cod_categoria = '', _isbn = '', _nombre = '';

  Libros(
    String cod_autor,
    String cod_categoria,
    String isbn,
    String nombre,
  ) {
    _cod_autor = cod_autor;
    _cod_categoria = cod_categoria;
    _isbn = isbn;
    _nombre = nombre;
  }

  String get Cod_autor {
    return _cod_autor;
  }

  set Cod_autor(String aut) {
    _cod_autor = aut;
  }

  String get Cod_categoria {
    return _cod_categoria;
  }

  set Cod_categoria(String cat) {
    _cod_categoria = cat;
  }

  String get Isbn {
    return _isbn;
  }

  set Isbn(String isbn) {
    _isbn = isbn;
  }

  String get Nombre {
    return _nombre;
  }

  set Nombre(String nom) {
    _nombre = nom;
  }
}
