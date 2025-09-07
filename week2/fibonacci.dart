int fibonacci(int n) {
  if (n < 0) throw ArgumentError("N harus >= 0");
  if (n == 0) return 0;
  if (n == 1) return 1;

  int a = 0, b = 1, result = 0;
  for (int i = 2; i <= n; i++) {
    result = a + b;
    a = b;
    b = result;
  }
  return result;
}

List<int> fibonacciSeries(int n) {
  if (n < 0) throw ArgumentError("N harus >= 0");
  List<int> series = [];
  int a = 0, b = 1;
  for (int i = 0; i <= n; i++) {
    series.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
  return series;
}
