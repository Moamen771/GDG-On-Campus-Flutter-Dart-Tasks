void main() {
  int product = 1;
  for (int i = 1; i <= 12; i++) {
    for (int j = 0; j <= 12; j++) {
      product = i * j;
      print("$i X $j = $product");
    }
    print("");
  }
}
