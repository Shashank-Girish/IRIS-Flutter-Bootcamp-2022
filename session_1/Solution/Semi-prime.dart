import 'dart:math';
import 'dart:io';

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
  print("Enter Number to be evaluated:");
  int? n = int.parse(stdin.readLineSync()!);
  int fctr = 0;
  int pctr = 0;
  int ctr = 2;
  num m = sqrt(n);

  while (ctr <= m) {
    if (n % ctr == 0) {
      fctr += 1;

      if ((isPrime(ctr) == 1) & (isPrime(n / ctr) == 1)) {
        pctr += 1;
      }
    }
    ctr += 1;
  }

  if ((fctr == 1) & (pctr == 1)) {
    print("Semi-Prime");
  } else {
    print("Not Semiprime");
  }
}
