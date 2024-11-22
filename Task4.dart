void main() {
  List lists = [1, 3, 2, 8, 4, 6, 7, 9, 5, 10];
  print(lists);
  lists.add(11);
  print(lists);
  lists.sort();
  print(lists);
  print([...lists.reversed]);
  lists.removeAt(0);
  print(lists);
}
