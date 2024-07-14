import 'dart:math';

void main() {
  // random number
  Random random = Random();

  List<int> nums = List<int>.generate(10, (index) => random.nextInt(100) + 1);
  print(nums);
  print(quickSort(nums));
}

// linear search

// pivote
// if smal pivate then left side
// if large pivate then right side

List quickSort(List list) {
  if (list.length <= 1) {
    // base  case
    return list;
  }
  int pivote = list[0];

  List grater = [];
  List small = [];

  for (int i = 1; i < list.length; i++) 
  {
    if (list[i] > pivote) {
      grater.add(list[i]);
    } else {
      small.add(list[i]);
    }
  }
  return [...quickSort(small), pivote, ...quickSort(grater)];
}
