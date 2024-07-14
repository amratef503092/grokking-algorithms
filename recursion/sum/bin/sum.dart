import 'dart:math';

void main() {
  // random number
  Random random = Random();

  List<int> nums = List<int>.generate(100, (index) => random.nextInt(100) + 1);
  print(sum(nums));
}

// linear search

int sum(List list) 
{ 
  if (list.isEmpty) {
    return 0;
  }
  return list[0] + sum(list.sublist(1));
}
