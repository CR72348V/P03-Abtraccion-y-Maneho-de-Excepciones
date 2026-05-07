import 'package:abstarccion_y_manejo_de_excepciones/Clase_Principal/Exepciones_Empleado.dart';

abstract class Empleado {
  String _nombre;
  int _edad;
  double _salarioBase;

  Empleado(String nombre, int edad, double salarioBase): 
  _salarioBase = comprobarSalarioBase(salarioBase),
  _nombre = comprobarNombre(nombre),
  _edad = comprobarEdad(edad); 

  static String comprobarNombre(String nombre){
    if(nombre.isEmpty){
      throw NombreInvalidoException("Error, El nombre no puede estar vacio");
    }
    return nombre;
  }

  static int comprobarEdad(int edad){
    if(edad < 0){
      throw EdadInvalidaException("Error, La edad no puede ser menor a 0");
    }
    if(edad < 18){
      throw EdadInvalidaException("Error, La edad no puede ser menor a 18");
    }
    if(edad > 100){
      throw EdadInvalidaException("Error, La edad no puede ser mayor a 100 ");
    }
    return edad;
  }

  static double comprobarSalarioBase(double salarioBase) {
    if (salarioBase < 0) {
      throw SalarioInvalidoException("Error, El salario base no puede ser negativo");
    }
    if(salarioBase < 9582.47 ){
      throw SalarioInvalidoException("Error, El salario base es invalido, no puede se menor al salario minimo mensual = 9,582.47");
    }
    return salarioBase;
  }
  
  String get nombre => _nombre;
  int get edad => _edad;
  double get salarioBase => _salarioBase;
  
   String tipoEmpleado();
   
   double calcularSalario (){
    return _salarioBase; 
  }

  void mostrarInfo(){
    print("El nombre del empleado es: $nombre");
    print("El empleado $nombre tiene $edad años");
    print("El salario del empleado $nombre es de: $_salarioBase pesos");
  }
}
 