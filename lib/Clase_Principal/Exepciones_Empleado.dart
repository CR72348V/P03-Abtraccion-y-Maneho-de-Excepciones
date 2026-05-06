class NombreInvalidoException implements Exception {
final String mensaje;

NombreInvalidoException(this.mensaje);

@override
String toString() => "NombreInvalidoException: $mensaje";
}


class EdadInvalidaException implements Exception {
  final String mensaje;

  EdadInvalidaException(this.mensaje);

  @override
  String toString() => 'EdadInvalidaException: $mensaje';
}


class SalarioInvalidoException implements Exception {
  final String mensaje;

  SalarioInvalidoException(this.mensaje);

  @override
  String toString() => 'SalarioInvalidoException: $mensaje';
}


class OperacionInvalidaException implements Exception {
  final String mensaje;

  OperacionInvalidaException(this.mensaje);

  @override
  String toString() => 'OperacionInvalidaException: $mensaje';
}


