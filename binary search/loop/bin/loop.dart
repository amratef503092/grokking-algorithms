import 'dart:math';

void main(List<String> arguments) {
  Random random = Random();

  List numes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = random.nextInt(10) + 1;
  print("Target number: $target");
  binarySearch(numes, target);
}

void binarySearch(List numes, int target) {
  int mid = numes.length ~/ 2;
  while (numes.length > 1) {
    if (numes[mid] == target) {
      print("${numes[mid]} found number");
      break;
    } else if (target > numes[mid]) {
      numes = numes.sublist(mid);
      mid = numes.length ~/ 2;
    } else if (target < numes[mid]) {
      numes = numes.sublist(0, mid);
      mid = numes.length ~/ 2;
    }
  }
}
