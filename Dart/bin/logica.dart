//Ciclo for
/*void main() {
  for(var i = 0; i <= 10; i++){
    print(i);
  }
}

//For Each
void main() {
  var lista = [0,1,2,3];
  for(var item in lista){
    print(item);
  }
  lista.forEach((item)=>print(item));
}

//Ciclo while y Do While
void main() {
  var estado = false;
  while (estado==false){
    print("Hola Mundo!!!");
    estado = true;
    if (estado==true){
      continue;
    }
    break;
  }
}

//Switch Case
void main() {
  var item = "Abierto";
  switch (item){
    case "Cerrado":
    print("Caso 1");
    break;
    case "Abierto":
    print("Caso 2");
    break;
    default:
    print("Ningún caso");
  }
}

//Manejo de Excepciones 
void main() {
  String mensaje = "Bienvenidos";
  try {
    print({mensaje[0]});
  } catch(e){
    print(e);
  }
}

//Manejo de clases en Dart
void main() {
  final pikachu = new Pokemon(nombre:"Pikachu", tipo:"Eléctrico");
  print(pikachu);
  print(pikachu.nombre);
}
class Pokemon {
  late String nombre;
  late String tipo;
  Pokemon({String nombre = "null", String tipo = "null"}){
    this.nombre = nombre;
    this.tipo = tipo;
  }
//  String toString(){
//    return "nombre ${this.nombre} - tipo ${this.tipo}";
//  }
    String toString() => "nombre: $nombre - tipo: $tipo";
}

//Constructores con Nombre
import 'dart:convert';
void main() {
  final rawJson = '{"nombre":"Pikachu", "tipo":"Eléctrico"}';
  final parsedJson = jsonDecode(rawJson);
  final pikachu = new Pokemon.fromJson(parsedJson);
  print(pikachu.type);
}
class Pokemon {
  late String name;
  late String type;
  Pokemon (this.name, this.type);
  Pokemon.fromJson(parsedJson){
    name = parsedJson['nombre'];
    type = parsedJson['tipo'];
  }
}

//Getters y Setters
void main() {
  Estudiante estudiante = new Estudiante();
  estudiante.edad_estudiante = 14;
  estudiante.nombre_estudiante = "Cosme Fulanito";
  print(estudiante.edad_estudiante);
  print(estudiante.nombre_estudiante);
}
class Estudiante{
  late String nombre;
  //String? nombre; //Signo de Interrogación null 
  int edad = 0;

  void set edad_estudiante (int edad){
    if(edad<=0){
      print("La edad Debe ser mayor a cero");
    }
    else{
      this.edad = edad;
    }
  }
  int get edad_estudiante => edad;
  /*
  int get edad_estudiante {
    return edad; 
  }
  */
  String get nombre_estudiante => nombre;

  void set nombre_estudiante(String nombre){
    this.nombre = nombre;
  }
}

//Clases Abstractas 
import 'dart:math';
void main() {
  var respuesta = TrianguloRectangulo(5, 8);
  print("La figura es un: ${respuesta.nombre}");
  print("El área es: ${respuesta.area()}");

  var respuesta2 = Rectangulo(10, 5);
  print("La figura es un: ${respuesta2.nombre}");
  print("El área es: ${respuesta2.area()}");

}
//Clase General
abstract class Figura{
  late final String nombre;
  late final List<double> lados;

  double area();
}
//Herencia 
class TrianguloRectangulo extends Figura{
  TrianguloRectangulo (double base, double altura){
    nombre = "Triangulo Rectángulo";
    lados = [base, altura, sqrt(pow(base, 2) + pow(altura, 2))]; //((x^2 + y^2)^(1/2)) hip
  }
  @override
  double area() {
    return (lados[0]*lados[1]) / 2;
  }
}

class Rectangulo extends Figura{
  Rectangulo (double base, double altura){
    nombre = "Rectángulo";
    lados = [base, altura, base, altura]; //Lista basada en el área
  }
  @override
  double area() {
    return (lados[0]*lados[1]);
  }
}
*/