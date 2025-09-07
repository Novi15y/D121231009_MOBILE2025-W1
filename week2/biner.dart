String toBinary(int n) {
  if (n < 0) throw ArgumentError("N harus >= 0");
  return n.toRadixString(2);
}
