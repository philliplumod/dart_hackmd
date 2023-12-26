import 'dart:io';
import 'dart:math';

void main() {
// Exercise 1
  // stdout.write('what is your name? ');
  // String name = stdin.readLineSync()!;
  // print('Hello, $name!');
  // stdout.write('What is your age? ');
  // int age = int.parse(stdin.readLineSync()!);
  // print('You are $age years old.');
  // int ageInOneHundredYears = 100 - age;
  // print('You will be 100 years old in $ageInOneHundredYears years.');

// Exercise 2
  // stdout.write('Give me a number: ');
  // int number = int.parse(stdin.readLineSync()!);
  // if (number % 2 == 0) {
  //   print('$number is even');
  // } else {
  //   print('$number is odd');
  // }

// Exercise 3
  // List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  // for (var i in a) {
  //   if (i > 5) {
  //     print(i);
  //   }
  // }
  // print([
  //   for (var i in a)
  //     if (i < 5) i
  // ]);

// Exercise 4
  // stdout.write('Input a number ');
  // int number = int.parse(stdin.readLineSync()!);
  // for (var i = 1; i <= number; i++) {
  //   if (number % i == 0) {
  //     print(i);
  //   }
  // }

// Exercise 5
  // List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  // List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  // Set<int> c = {};
  // for (var i in a) {
  //   for (var j in b) {
  //     if (i == j) {
  //       c.add(i);
  //     }
  //   }
  // }
  // print(c.toList());

// Exercise 7
  // List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  // List<int> evenList = [
  //   for (var i in a)
  //     if (i % 2 == 0) i
  // ];
  // for (var j in evenList) {
  //   print(j);
  // }
  // print(evenList);
  // List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  // int i = 0;
  // List<int> l = [];
  // for (var e in a) {
  //   if (++i % 2 == 0) {
  //     l.add(e);
  //   }
  // }
  // print(l);
  // // One liner
  // print([
  //   for (var e in a)
  //     if (++i % 2 == 0) e
  // ]);

// Exercise 6
  // stdout.write('Please give a word ');
  // String userIn = stdin.readLineSync()!;
  // String palindrome = userIn.split('').reversed.join();
  // if (userIn == palindrome) {
  //   print('Palindrome');
  // } else {
  //   print('Not Palindrome');
  // }

// Exercise 8
  // Solution 1
  // List<String> pick = ['Rock', 'Paper', 'Scissors'];
  // final random = Random();
  // var element = pick[random.nextInt(pick.length)];
  // stdout.write('pick $pick ');
  // String input = stdin.readLineSync()!;
  // if (input == element) {
  //   print('You Win');
  // } else {
  //   print('You lose');
  // }

  Map<String, String> rules = {
    'rock': 'rock',
    'paper': 'paper',
    'scissor': 'scissor'
  };
  List<String> options = ["rock", "paper", "scissors"];
  final random = Random();
  int user = 0;
  int comp = 0;

  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\nPlease choose Rock, Paper or Scissors: ");
    String userChoice = stdin.readLineSync()!.toLowerCase();

    if (userChoice == "exit") {
      print("\nYou: $user Computer: $comp\nBye Bye!");
      break;
    }
    if (options.contains(userChoice)) {
      print('Incorrect Choice');
      continue;
    } else if (compChoice == userChoice) {
      print('TIE');
    } else if (rules[compChoice] == userChoice) {
      print('Computer Wins');
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print('Player Wins');
      user += 1;
    }
  }
}
