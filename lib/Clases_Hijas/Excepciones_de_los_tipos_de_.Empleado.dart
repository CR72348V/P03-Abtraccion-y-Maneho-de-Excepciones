class BonoInvalidoException implements Exception {
  final String message;

  BonoInvalidoException(this.message);

  @override
  String toString() => 'BonoInvalidoException: $message';
}


class PorcentajeComisionInvalidoException implements Exception {
  final String message;

  PorcentajeComisionInvalidoException(this.message);

  @override
  String toString() => 'PorcentajeComisionInvalidoException: $message';
}


class HorasExtrasInvalidaException implements Exception {
  final String message;

  HorasExtrasInvalidaException(this.message);

  @override
  String toString() => 'HorasExtrasInvalidaException: $message';
}