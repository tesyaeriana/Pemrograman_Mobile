void main(List<String> arguments) {

  //Langkah 1
  /*final list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);
  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);*/

  //Langkah 3
  final List<String?> list = List.filled(5, null);
  list[1] = "Tesya Eriana";
  list[2] = "2141720024";
  assert(list.length == 5);
  print(list[1]);
  print(list[2]);
}
