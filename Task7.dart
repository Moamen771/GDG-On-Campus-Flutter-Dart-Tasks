void main() {
  showEvenNum(number1: 0, number2: 10);
}

void showEvenNum({required number1, required int number2}) {
  List even = [];
  for (int i = number1; i < number2; i++) {
    if (i % 2 == 0) {
      even.add(i);
    }
  }
  print("Even numbers between $number1 and $number2 is $even");
}
