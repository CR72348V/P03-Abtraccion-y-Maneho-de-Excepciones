import 'package:abstarccion_y_manejo_de_excepciones/Clase_Principal/Empleado.dart';
import 'package:abstarccion_y_manejo_de_excepciones/Clases_Hijas/Excepciones.dart';

class EmpleadoOperativo extends Empleado {
  double _horasExtras;
  double _pagoxHora;

  EmpleadoOperativo(
    String nombre,
    int edad,
    double salarioBase,
    double horasExtras,
    double pagoxHora
  ) : _horasExtras = _horasExtra(horasExtras),
      _pagoxHora = pagoxHora,
      super(nombre, edad, salarioBase);

  static double _horasExtra(double horasExtra){
    if(horasExtra < 0){
      throw HorasExtrasInvalidaException("No hay horas negativas");
    }
    return horasExtra;
  }

  double get horasExtras => _horasExtras;
  double get pagoxHora => _pagoxHora;


  @override
  String tipoEmpleado() => "Operativo";

  @override
      double calcularSalario(){
        return salarioBase + horasExtras * pagoxHora;
  }
}   