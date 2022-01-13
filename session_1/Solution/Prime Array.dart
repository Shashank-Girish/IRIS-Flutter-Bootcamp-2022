import 'dart:math';

int isPrime(num a) {
  num b = sqrt(a);
  int fctr = 2;

  while (fctr <= b) {
    if (a % fctr == 0) {
      return 0;
    }
  }
  return 1;
}

void main() {
  var l = [2, 3, 5, 7];
  int sum = 0;
  int i = 0;
  int c;
  for (i in l) {
    sum += i;
  }
  c = isPrime(sum);
  if (c == 0) {
    print("The sum is Prime");
  } else {
    print("Sum is not Prime");
  }
}
