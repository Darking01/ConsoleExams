import 'dart:io';

void main(List<String> arguments) {
  print('========== MENU ==========');

  String opcion = "0";

  print("1. SUMA");
  print("2. RESTAs");
  print("3. MULTIPLICACION");
  print("4. DIVISION");
  print("5. NUMEROS PRIMOS");
  print("6. NUMEROS PARES E IMPARES EN UN RANGO");
  print("7. SECUENCIA DE FIBONACCI");
  print("8. CALCULO DE AREAS GEOMETRICASS");
  print("9. SALIR");

  print("Seleccione una opción:");
  opcion = stdin.readLineSync() ?? "0";

  switch (opcion) {
    case "1":
      // Crear un nuevo usuario
      break;
    case "2":
      // Mostrar todos los usuarios
      break;
    case "3":
      // Buscar un usuario
      break;
    case "4":
      // Actualizar un usuario
      break;
    case "5":
      // Eliminar un usuario
      break;
    case "6":
      // Salir
      break;
    case "7":
      // Salir
      break;
    case "8":
      // Salir
      break;
    case "9":
      // Salir
      break;
    default:
      print("Opción no válida, intente de nuevo.");
  }
}
