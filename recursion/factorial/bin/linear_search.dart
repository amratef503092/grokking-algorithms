import 'dart:math';

void main() {
  // random number
  Random random = Random();

  List<int> nums = List<int>.generate(100, (index) => random.nextInt(100) + 1);
  print(factorial(5));
}

// linear search

int factorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n * (factorial(n - 1));
}
