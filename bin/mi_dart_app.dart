import 'dart:io';

void main(List<String> arguments) {
  String opcion = "0";
  while (opcion != "9") {
    print('                           ');
    print('========== MENU ==========');
    print("1. SUMA");
    print("2. RESTAs");
    print("3. MULTIPLICACION");
    print("4. DIVISION");
    print("5. NUMEROS PRIMOS");
    print("6. NUMEROS PARES E IMPARES EN UN RANGO");
    print("7. SECUENCIA DE FIBONACCI");
    print("8. CALCULO DE AREAS GEOMETRICASS");
    print("9. SALIR");
    print('                           ');
    print("Seleccione una opción:");
    opcion = stdin.readLineSync() ?? "0";

    switch (opcion) {
      //suma
      case "1":
        print('                           ');
        print("========== SUMA ==========");
        print("Ingrese el primer número:");
        String? input1 = stdin.readLineSync();
        print("Ingrese el segundo número:");
        String? input2 = stdin.readLineSync();
        // Validar que las entradas no sean nulas y convertirlas a enteros
        if (input1 != null && input2 != null) {
          double num1 = double.parse(input1);
          double num2 = double.parse(input2);
          double resultado = num1 + num2;
          print("El resultado de la suma es: $resultado");
        } else {
          print("Entrada no válidaaaaa.");
        }
        break;

      //resta
      case "2":
        print('                           ');
        print("========== Resta ==========");
        print("Ingrese el primer número:");
        String? input1 = stdin.readLineSync();
        print("Ingrese el segundo número:");
        String? input2 = stdin.readLineSync();
        // Validar que las entradas no sean nulas y convertirlas a enteros
        if (input1 != null && input2 != null) {
          double num1 = double.parse(input1);
          double num2 = double.parse(input2);
          double resultado = num1 - num2;
          print("El resultado de la resta  es: $resultado");
        } else {
          print("Entrada no válida.");
        }
        // Mostrar todos los usuarios

        break;
      case "3":
        // MULTIPLICACION
        print('                           ');
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
        print('                           ');
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
        print('                           ');
        print("========== NÚMEROS PRIMOS EN RANGO ==========");
        print("Ingrese el número inicial del rango:");
        String? input1 = stdin.readLineSync();
        print("Ingrese el número final del rango:");
        String? input2 = stdin.readLineSync();

        if (input1 != null && input2 != null) {
          int inicio = int.parse(input1);
          int fin = int.parse(input2);
          List<int> primos = [];

          bool esPrimo(int numero) {
            if (numero <= 1) return false;
            if (numero == 2) return true;
            if (numero % 2 == 0) return false;

            for (int i = 3; i <= numero ~/ 2; i += 2) {
              if (numero % i == 0) return false;
            }
            return true;
          }

          for (int i = inicio; i <= fin; i++) {
            if (esPrimo(i)) {
              primos.add(i);
            }
          }

          print("Números primos encontrados entre $inicio y $fin:");
          print(primos.join(", "));
          print("Total de números primos: ${primos.length}");
        } else {
          print("Entrada no válida.");
        }
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
        print('                           ');
        print("Opción no válida, intente de nuevo.");
    }
  }
  print('                           ');
  print("Saliendo del programa...");
}
