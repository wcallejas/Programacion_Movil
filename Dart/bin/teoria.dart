//Este es un comentario 
/*
Hacer comentarios con DART
*/
//Tipos de Variables en Dart 
/* 
void main() {
  print("Hola Mundo Desde DART");
  String nombre = "Frankie 123";
  nombre = "Frankie 456";
  int numero = 1; 
  double num2 = 1.23;
  bool condicion = true;
  print(condicion);
  dynamic dm = 1;
  dm = "Hola Mundo";
  dm = true;
  print(dm);
  print(num2);
  print(numero);
  print(nombre);
  
  var dato = 2;
  print(dato);
}
*/
//Listas 
/*
void main() {
  List<dynamic> lista;
  lista=["Frankie","Codigo", true, false];
  lista.add("uniciencia.edu.co");
  lista.removeAt(1);
  print(lista);
}


//Método Set para Listas
void main() {
  Set datos = Set.from(["Uniciencia","Hola Mundo","Uniciencia"]);
  datos.add("blanco");
  datos.remove("Hola Mundo");
  datos.clear(); //Limpiar todos los registros
  print(datos);
}

//Variable maps
void main() {
  var colores = {"color1":"blanco", "color2":"negro"};
  var color3 = {"color3":"azul"};
  colores.addAll(color3);
  colores.remove("color2");
  colores.clear();
  print(colores);
}

//Constantes
void main() {
  final nombre = new DateTime.now();
  print(nombre);
}

//Operadores Aritméticos
void main() {
  var n1 = 10.5;
  var n2 = 9;
  var resultado = n1 % n2;
  print(resultado);
}

void main() {
  var resultado = suma(45, 5);
  print(resultado);
}

int suma(int a, int b){
  return (a+b);
}

//Función Void 
void main() {
  var nombre = "Alejandro";
  mostrarnombre(nombre);
}
void mostrarnombre(var nombre){
  print("Aquí esta $nombre");
}

//Required 
void main() {
  var n = "Kelly";
  mostrarnombre(nombre: n);
}
void mostrarnombre({required String nombre}){
  print("Aquí esta $nombre");
}

//Funciones de Flecha
void main() {
  var resultado = suma(4, 5);
  print(resultado);
}

int suma(int a, int b) => (a + b); 

//Operadores Lógicos, Relacionales y Condicionales
void main() {
  var precio = 500; 
  if(precio==500){
    print("Precio Promedio");
  }
  else if (precio>500) {
    print("Precio mayor del promedio");
  }
  else{
    print("El precio es menor al promedio");
  }
}

void main() {
  var precio = 500;
  //if(precio==500 && precio==0){ operador y
  if(precio==500 || precio==0){ 
    print("Precio Promedio");
  }
  else if (precio>500) {
    print("Precio mayor del promedio");
  }
  else{
    print("El precio es menor al promedio");
  }
}

//Operadores Ternarios
void main() {
  var precio = 499;
  var barato = null;
  /*
  if(precio < 500) { 
    barato = true;
  } else {
    barato = false;
  }
  */
  barato = precio < 500 ? true : false;

  print(barato);
}

//Operadores de Asignación 
void main() {
  dynamic a = 2;
  //a = a + 5;
  //a += 5;
  //a -= 1;
  //a *= 5;
  a /= 2;
  print(a);
}

//Blucle For
void main() {
  for (var numero = 0; numero <= 10; numero++){
    print(numero);
  }
}

//ForEach
void main() {
  var lista = [0,1,2];
  for (var item in lista){
    print(item);
  }
  lista.forEach((item)=>print(item));
}

//Bucle While y Do While 
void main() {
  var estado = false;
  while (estado==false) {
    print("Hola Mundo");
    estado = true;
    if(estado==true){
      continue;
    }
    break;
  }
}

//Switch Case
void main() {
  var item = "abierto";
  switch (item){
    case "close":
    print("Caso 1");
    break;
    case "abierto":
    print("Caso 2");
    break;
    default:
    print("Ningún caso");
  }
}

//Manejo de Excepciones
void main() {
  String mensaje = "Hola";
  try {
    print({mensaje[0]});
  } catch(e){
    print(e);
  }
}

//Manejo de Clases en Dart
void main() {
  final pikachu = new Pokemon(nombre: "Pikachu", tipo: "Eléctrico");
  print(pikachu);
  //print(pikachu.nombre);
}
class Pokemon {
  late String nombre;
  late String tipo;
  Pokemon({String nombre = "null", String tipo = "null"}){
    this.nombre=nombre;
    this.tipo=tipo;
  }
  String toString(){
    return "nombre: ${this.nombre} - tipo:${this.tipo}";
  }
}

void main() {
  final pikachu = new Pokemon(nombre: "Pikachu", tipo: "Eléctrico");
  print(pikachu);
  //print(pikachu.nombre);
}
class Pokemon {
  late String nombre;
  late String tipo;
  Pokemon({this.nombre="null",this.tipo="null"});

  String toString() => "nombre: $nombre - tipo:$tipo";
  
}

//Constructores con nombre
import 'dart:convert';
void main() {
  final rawJson = '{ "nombre" : "Pikachu", "tipo" : "Eléctrico"}';
  final parsedJson = json.decode(rawJson);
  final pikachu = new Pokemon.fromJson(parsedJson);
  print(pikachu.name);
}
class Pokemon {
  late String name;
  late String type;
  Pokemon(this.name, this.type);
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
  //String? nombre; //Signo de interrogación referente a null 
  int edad = 0;

  void set edad_estudiante (int edad){
    if(edad <= 0){
      print("La edad debe ser mayor que 0");
    }else{
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
  /*
  String get nombre_estudiante{
    return nombre;
  }
  */
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
  print("La figura es: ${respuesta2.nombre}");
  print("La área es: ${respuesta2.area()}"); 
}
//Clase General 
abstract class Figura{
  late final String nombre;
  late final List<double> lados;

  double area();
}
//Herencia 
class TrianguloRectangulo extends Figura{
  TrianguloRectangulo(double base, double altura){
    nombre="Triangulo Rectángulo";
    lados = [base,altura,sqrt(pow(base,2)+pow(altura, 2))];

  }
  @override
  double area() {
    return(lados[0]*lados[1]) / 2;
  }
}

class Rectangulo extends Figura{
  Rectangulo(double base, double altura){
    nombre = "Rectángulo";
    lados = [base,altura,base,altura];

  }
  @override 
  double area(){
    return lados[0] * lados[1];
  }
}
*/
//Future async await --> Tareas en espera y asíncronas
void main () async {
  print("Consultando a la base de Datos...");
  print(await validarUser());
  print("Navegar a la Página Principal");
}
Future <String> validarUser()async{
  var respuesta = await consultarUser();
  return "La respuesta es: ${respuesta}";
}
Future <String> consultarUser() => 
      Future.delayed(const Duration(seconds: 10),()=>"Usuario Correcto");

//Widgets 
//StatelessWidget --> no cambia su estado en el transcurso del código
//StatefulWidget --> Cambia su estado de acuerdo con una acción programada