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
      // Mostrar todos loss usuarios

      break;
    case "3":
      // MULTIPLICACION
      print("========== Multiplicacion ==========");
      // Solicitar dos números al usuario
      print("Ingrese el primer número:");
      String? input1 = stdin.readLineSync();
      print("Ingrese el segundo número:");
      String? input2 = stdin.readLineSync();
      // Validar que las entradas no sean nulas y convertirlas a enteros
      if (input1 != null && input2 != null) {
        int num1 = int.parse(input1);
        int num2 = int.parse(input2);
        int resultado = num1 * num2;
        print("El resultado de la multiplicación es: $resultado");
      } else {
        print("Entrada no válida.");
      }
      break;

    case "4":
      // DIVISION
      print("========== Division ==========");
      // Solicitar dos números al usuario
      print("Ingrese el primer número:");
      String? input1 = stdin.readLineSync();
      print("Ingrese el segundo número:");
      String? input2 = stdin.readLineSync();

      // Validar que las entradas no sean nulas y convertirlas a enteros
      if (input1 != null && input2 != null) {
        int num1 = int.parse(input1);
        int num2 = int.parse(input2);
        // Validar que el segundo número no sea cero
        if (num2 != 0) {
          double resultado = num1 / num2;
          print("El resultado de la división es: $resultado");
        } else {
          print("Error: No se puede dividir entre cero.");
        }
      } else {
        print("Entrada no válida.");
      }
      break;

    case "5":
      // Eliminar un usuario
      break;
    case "6":
      // Salir
      break;
    case "7":
      print("========== Secuencia de Fibonacci ==========");
      // Salir
      break;
    case "8":
      // Salir
      print("========== Cálculo de Áreas Geométrica ==========");
      break;
    case "9":
      // Salir
      break;
    default:
      print("Opción no válida, intente de nuevo.");
  }
}
