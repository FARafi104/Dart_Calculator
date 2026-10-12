
import 'dart:io';

void main() {
  print('================================');
  print('       DART CALCULATOR');
  print('================================');

  while (true) {
    print('\nChoose an operation:');
    print('1. Addition (+)');
    print('2. Subtraction (-)');
    print('3. Multiplication (*)');
    print('4. Division (/)');
    print('5. Percentage (%)');
    print('6. Exit');

    stdout.write('\nEnter your choice: ');
    String? choice = stdin.readLineSync();

    if (choice == '6') {
      print('\nThank you for using the calculator!');
      break;
    }

    if (choice == null ||
        !['1', '2', '3', '4', '5'].contains(choice)) {
      print('Invalid choice! Please try again.');
      continue;
    }

    stdout.write('Enter first number: ');
    double? num1 = double.tryParse(stdin.readLineSync() ?? '');

    if (num1 == null) {
      print('Invalid number! Please enter a numeric value.');
      continue;
    }

    stdout.write('Enter second number: ');
    double? num2 = double.tryParse(stdin.readLineSync() ?? '');

    if (num2 == null) {
      print('Invalid number! Please enter a numeric value.');
      continue;
    }

    double result;

    switch (choice) {
      case '1':
        result = num1 + num2;
        print('\nResult: $num1 + $num2 = $result');
        break;

      case '2':
        result = num1 - num2;
        print('\nResult: $num1 - $num2 = $result');
        break;

      case '3':
        result = num1 * num2;
        print('\nResult: $num1 * $num2 = $result');
        break;

      case '4':
        if (num2 == 0) {
          print('\nError: Cannot divide by zero!');
          continue;
        }
        result = num1 / num2;
        print('\nResult: $num1 / $num2 = $result');
        break;

      case '5':
        result = (num1 * num2) / 100;
        print('\n$num2% of $num1 = $result');
        break;

      default:
        print('Invalid operation!');
    }

    print('--------------------------------');
  }
}

