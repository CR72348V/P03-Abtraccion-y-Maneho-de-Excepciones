import 'package:abstarccion_y_manejo_de_excepciones/Clase_Principal/Empleado.dart';
import 'package:abstarccion_y_manejo_de_excepciones/Clases_Hijas/Excepciones_de_los_tipos_de_.Empleado.dart';

class EmpleadoAdministrativo extends Empleado{
  double _bonoAdministrativo;

 EmpleadoAdministrativo(
  String nombre, 
  int edad, 
  double salarioBase, 
  double bonoAdministrativo
) : _bonoAdministrativo = _comprobarBono(bonoAdministrativo),
    super(nombre, edad, salarioBase);

static double _comprobarBono(double bonoAdministrativo){
  if(bonoAdministrativo < 0){
    throw BonoInvalidoException("Error, El bono no puede ser negativo");
  }
  if(bonoAdministrativo > 1){
    throw BonoInvalidoException("Error, El bono no puede ser mayor al 1");
  }
  return bonoAdministrativo;
}

double get bonoAdministrativo => _bonoAdministrativo;


@override
  void mostrarInfo(){
    super.mostrarInfo();

    print("El bono es: $_bonoAdministrativo");
    print("El salario final es: ${calcularSalario()}");
    print("El tipo del empleado es: ${tipoEmpleado()}");

  }

@override
String tipoEmpleado() => "Administrativo";

@override
double calcularSalario(){
  return salarioBase + bonoAdministrativo;
 }
}