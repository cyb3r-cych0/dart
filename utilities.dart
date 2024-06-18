// Function to calculate the sum of two numbers
int calculateSum(int num1, int num2) {
  return num1 + num2;
}

void main() {
  // 1. Calculate the sum of two numbers
  int sum = calculateSum(5, 7);
  print('Sum of 5 and 7 is: $sum');

  // 2. Print numbers from 1 to 10 using a for loop
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // 3. Switch statement to check different string values
  String value = 'apple';
  switch (value) {
    case 'apple':
      print('It is a fruit');
      break;
    case 'car':
      print('It is a vehicle');
      break;
    default:
      print('Unknown value');
  }

  // 4. Print numbers from 20 to 10 using a while loop
  int num = 20;
  while (num >= 10) {
    print(num);
    num--;
  }

  // 5. Check if a number is even or odd using if-else statement
  int number = 15;
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }

  // 6. Find the largest number in a list
  List<int> numbers = [10, 25, 7, 32, 18];
  int largestNumber = numbers.reduce((value, element) => value > element ? value : element);
  print('The largest number in the list is: $largestNumber');

  // 7. Try-catch block to catch an exception
  try {
    int result = 10 ~/ 0; // Division by zero to trigger an exception
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}

