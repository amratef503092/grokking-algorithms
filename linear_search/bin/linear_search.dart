import 'dart:math';

void main() {
  // random number
  Random random = Random();

  List<int> nums = List<int>.generate(100, (index) => random.nextInt(100) + 1);
  print(linearSearch(nums, 19));
}

// linear search

int linearSearch(List list, int target) {
  for (int i in list) {
    if (i == target) {
      return i;
    }
  }
  return -1;
}
