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
    print("========== ==========");

    switch (opcion) {
      //suma
      case "1":
        print('                           ');
        print("========== SUMA ==========");
        print("Ingrese el primer número:");
        String? input1 = stdin.readLineSync();
        print("Ingrese el segundo número:");
        String? input2 = stdin.readLineSync();
        // entradas convertirlas a enteros
        if (input1 != null && input2 != null) {
          double num1 = double.parse(input1);
          double num2 = double.parse(input2);
          double resultado = num1 + num2;
          print("El resultado de la suma es: $resultado");
          print("========== ==========");
        } else {
          print("Entrada no válidaaaaa.");
          print("========== ==========");
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
        // entradas convertirlas a enteros
        if (input1 != null && input2 != null) {
          double num1 = double.parse(input1);
          double num2 = double.parse(input2);
          double resultado = num1 - num2;
          print("El resultado de la resta  es: $resultado");
        } else {
          print("Entrada no válida.");
          print("========== ==========");
        }

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
          print("========== ==========");
        } else {
          print("Entrada no válida.");
          print("========== ==========");
        }
        break;

      case "4":
        // DIVISION
        print('                           ');
        print("========== Division ==========");
        // entrada de nmeros al usuario
        print("Ingrese el primer número:");
        String? input1 = stdin.readLineSync();
        print("Ingrese el segundo número:");
        String? input2 = stdin.readLineSync();

        // Ventrada de datos
        if (input1 != null && input2 != null) {
          int num1 = int.parse(input1);
          int num2 = int.parse(input2);

          if (num2 != 0) {
            double resultado = num1 / num2;
            print("El resultado de la división es: $resultado");
            print("========== ==========");
          } else {
            print("Error: No se puede dividir entre cero.");
            print("========== ==========");
          }
        } else {
          print("Entrada no válida.");
          print("========== ==========");
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
          print("========== ==========");
        } else {
          print("Entrada no válida.");
          print("========== ==========");
        }
        break;
      case "6":
        // Numeros pare e impares en un rango
        print('                           ');
        print("========== NUMEROS PARES E IMPARES ==========");
        print("Ingrese el número inicial del rango:");
        String? input1 = stdin.readLineSync();
        print("Ingrese el número final del rango:");
        String? input2 = stdin.readLineSync();

        if (input1 != null && input2 != null) {
          int inicio = int.parse(input1);
          int fin = int.parse(input2);
          List<int> pares = [];
          List<int> impares = [];

          for (int i = inicio; i <= fin; i++) {
            if (i % 2 == 0) {
              pares.add(i);
            } else {
              impares.add(i);
            }
          }

          print("Números pares entre $inicio y $fin:");
          print(pares.join(", "));
          print("Números impares entre $inicio y $fin:");
          print(impares.join(", "));
        } else {
          print("Entrada no válida.");
          print("========== ==========");
        }
        break;
      // secuencia fibonacci
      case "7":
        print('                           ');
        print("========== SECUENCIA DE FIBONACCI ==========");
        print("¿Cuántos términos desea generar?");
        String? input = stdin.readLineSync();

        if (input != null) {
          int n = int.parse(input);
          if (n <= 0) {
            print("Debe ingresar un número mayor que cero.");
          } else {
            List<int> fibonacci = [];

            for (int i = 0; i < n; i++) {
              if (i == 0) {
                fibonacci.add(0);
              } else if (i == 1) {
                fibonacci.add(1);
              } else {
                fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
              }
            }

            print("Los primeros $n términos de la secuencia de Fibonacci son:");
            print(fibonacci.join(", "));
            print("========== ==========");
          }
        } else {
          print("Entrada no válida.");
          print("========== ==========");
        }
        // Salir
        break;
      case "8":
        // Cálculo de áreas geométricas
        String? figura = "";
        while (figura != "5") {
          print('                           ');
          print("========== CÁLCULO DE ÁREAS GEOMÉTRICAS ==========");
          print("Seleccione la figura:");
          print("1. Círculo");
          print("2. Cuadrado");
          print("3. Rectángulo");
          print("4. Triángulo");
          print("5. Salir");
          figura = stdin.readLineSync();

          switch (figura) {
            case "1":
              print('                           ');
              print("========== AREA DE CIRCULO ==========");
              print("Ingrese el radio del círculo:");
              String? radioStr = stdin.readLineSync();
              if (radioStr != null) {
                double radio = double.parse(radioStr);
                double area = 3.1416 * radio * radio;
                print('                           ');
                print("El área del círculo es: $area");
                print("========== ==========");
              } else {
                print("Entrada no válida.");
                print("========== ==========");
              }
              break;

            case "2":
              // Área de un cuadrado: lado^2
              print('                           ');
              print("========== AREA DE CUADRADO ==========");
              print("Ingrese el lado del cuadrado:");
              String? ladoStr = stdin.readLineSync();
              if (ladoStr != null) {
                double lado = double.parse(ladoStr);
                double area = lado * lado;
                print('                           ');
                print("El área del cuadrado es: $area");
                print("========== ==========");
              } else {
                print("Entrada no válida.");
                print("========== ==========");
              }
              break;

            case "3":
              print('                           ');
              print("========== AREA DE RECTANGULO ==========");
              print("Ingrese la base del rectángulo:");
              String? baseStr = stdin.readLineSync();
              print("Ingrese la altura del rectángulo:");
              String? alturaStr = stdin.readLineSync();
              if (baseStr != null && alturaStr != null) {
                double base = double.parse(baseStr);
                double altura = double.parse(alturaStr);
                double area = base * altura;
                print('                           ');
                print("El área del rectángulo es: $area");
                print("========== ==========");
              } else {
                print("Entrada no válida.");
                print("========== ==========");
              }
              break;

            case "4":
              print('                           ');
              print("========== AREA DE TRIANGULO ==========");
              print("Ingrese la base del triángulo:");
              String? baseStr = stdin.readLineSync();
              print("Ingrese la altura del triángulo:");
              String? alturaStr = stdin.readLineSync();
              if (baseStr != null && alturaStr != null) {
                double base = double.parse(baseStr);
                double altura = double.parse(alturaStr);
                double area = (base * altura) / 2;
                print('                           ');
                print("El área del triángulo es: $area");
                print("========== ==========");
              } else {
                print("Entrada no válida.");
                print("========== ==========");
              }
              break;

            case "5":
              // Salir del submenuu
              break;

            default:
              print("Figura no valida.");
              print("========== ==========");
              break;
          }
        }
        break;
      case "9":
        // Salir
        break;
      default:
        print('                           ');
        print("Opción no válida, intente de nuevo.");
        print("========== ==========");
    }
  }
  print('                           ');
  print("========== ==========");
  print("Gracias por utilizarnos... Saliendo del programa...");
  print("========== ==========");
}
