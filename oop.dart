import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Base class
class LivingBeing {
  String name;

  LivingBeing(this.name);

  void breathe() {
    print('$name is breathing');
  }
}

// Derived class implementing an interface and overriding a method
class Dog extends LivingBeing implements Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name barks');
  }
}

void main() {
  // Create an instance of Dog initialized with data from a file
  Dog dog;
  try {
    File file = File('dog_data.txt');
    List<String> lines = file.readAsLinesSync();
    if (lines.length > 0) {
      dog = Dog(lines[0]);
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  // Demonstrate the use of a loop
  for (int i = 0; i < 3; i++) {
    dog.makeSound();
  }
}

