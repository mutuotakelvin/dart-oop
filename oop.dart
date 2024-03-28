class Animal {
  void speak() {
    print('Generic animal sound');
  }
}

// Define a class that implements the interface
class Dog implements Animal {
  void speak() {
    print('Woof!');
  }
}

// Define a base class implementing the Animal interface
class Mammal implements Animal {
  String name;

  Mammal(this.name);

  void speak() {
    print('Generic mammal sound');
  }
}

// Define a derived class overriding the speak method
class Cat extends Mammal {
  List<String> sounds = [];

  Cat(String name) : super(name) {
    sounds = loadSoundsFromFile();
  }

  List<String> loadSoundsFromFile() {
    // Mock data for loading sounds from a file
    return ["Meow", "Purr", "Hiss"];
  }

  @override
  void speak() {
    print(sounds[0]); // Just for simplicity, printing first sound from list
  }
}

// Method demonstrating the use of a loop
void repeatSpeak(Animal animal, int times) {
  for (int i = 0; i < times; i++) {
    animal.speak();
  }
}

void main() {
  // Create instances of classes
  var dog = Dog();
  var cat = Cat("Whiskers");

  // Demonstrate overriding of method
  dog.speak(); // Output: Woof!

  // Demonstrate initialization from a file
  cat.speak(); // Output: Meow

  // Demonstrate use of a loop
  repeatSpeak(dog, 3); // Output: Woof! Woof! Woof!
}
