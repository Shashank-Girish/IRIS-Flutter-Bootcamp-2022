import 'dart:io';

void main() {
  print("Enter Number of Fibonnaci Required:");
  int? n = int.parse(stdin.readLineSync()!);
  int i = 1;
  int j = 1;
  int ctr = 1;
  while (ctr <= n) {
    ctr += 1;
    print(i);
    int temp = 0;
    i += j;
    temp = i;
    i = j;
    j = temp;
  }
}
