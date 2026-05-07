import 'package:abstarccion_y_manejo_de_excepciones/Clase_Principal/Empleado.dart';
import 'package:abstarccion_y_manejo_de_excepciones/Clases_Hijas/Excepciones_de_los_tipos_de_.Empleado.dart';

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
      throw HorasExtrasInvalidaException("Error, No hay horas negativas");
    }
    if(horasExtra > 39){
      throw HorasExtrasInvalidaException("Error, El maximo de horas extras al mes es de: 39");
    }
    return horasExtra;
  }

  double get horasExtras => _horasExtras;
  double get pagoxHora => _pagoxHora;

  @override
  void mostrarInfo(){
    super.mostrarInfo();

    print("El bono es: $_horasExtras");
    print("El salario final es: ${calcularSalario()}");
    print("El tipo del empleado es: ${tipoEmpleado()}");

  }


  @override
  String tipoEmpleado() => "Operativo";

  @override
      double calcularSalario(){
        return salarioBase + horasExtras * pagoxHora;
  }
}   