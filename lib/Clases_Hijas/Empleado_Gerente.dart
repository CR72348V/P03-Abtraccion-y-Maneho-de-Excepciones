import 'package:abstarccion_y_manejo_de_excepciones/Clase_Principal/Empleado.dart';
import 'package:abstarccion_y_manejo_de_excepciones/Clases_Hijas/Excepciones.dart';

class EmpleadoGerente extends Empleado {
  double _porcentajeComision;

  EmpleadoGerente(
    String nombre,
    int edad,
    double salarioBase,
    double porcentajeComision
  ) : _porcentajeComision = _comprobarPorcentajeComision(porcentajeComision),
      super(nombre, edad, salarioBase);

  static double _comprobarPorcentajeComision(double porcentajeComision){
    if(porcentajeComision < 0){
      throw PorcentajeComisionInvalidoException("No existe comision negativa");
    }
    return porcentajeComision;
  }

  double get porcentajeComision => _porcentajeComision; 
  

  @override
  String tipoEmpleado() => "Gerente";
 
  @override
  double calcularSalario(){
    return salarioBase + (salarioBase * (_porcentajeComision));
  }
}