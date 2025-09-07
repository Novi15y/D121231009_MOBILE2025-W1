// faktorial.dart
int faktorial(int n) {
  if (n < 0) {
    throw ArgumentError("N harus >= 0");
  }
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}
