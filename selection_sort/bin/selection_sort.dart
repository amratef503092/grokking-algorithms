import 'dart:math';

void main() {
  // random number
  Random random = Random();

  List<int> nums = List<int>.generate(10, (index) => random.nextInt(100) + 1);
  print(nums);
  print(selectionSort(nums));
}

// linear search

List selectionSort(List list) {
  List sortedList = [];

  while (list.isNotEmpty) {
    int small = foundSmallElement(list);
    sortedList.add(small);
    list.remove(small);
  }
  list = sortedList;
  return list;
}

int foundSmallElement(List list) {
  int small = 0;

  small = list[0];
  for (var element in list) {
    if (small > element) {
      small = element;
    }
  }
  return small;
}
