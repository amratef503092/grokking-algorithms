import 'dart:math';

void main(List<String> arguments) {
  Random random = Random();

  List numes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = random.nextInt(10) + 1;
  print("Target number: $target");
  binarySearch(numes, 1);
}

int binarySearch(List numes, int target) 
{
  // case one found it
  // case two not found it
  int mid = numes.length ~/ 2;
  print(numes);
  if (numes[mid] == target) {
    print("Found it");
    return mid;
  } else {
    if (numes.length == 1) {
      print("Not found it");
      return -1;
    }
    if (numes[mid] > target) {
      return binarySearch(numes.sublist(0, mid), target);
    } else {
      return binarySearch(numes.sublist(mid), target);
    }
  }
}
