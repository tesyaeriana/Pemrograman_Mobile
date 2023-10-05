(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main(List<String> arguments) {
  /*var record = (2, 3);
  print(record);
  print(tukar(record));*/

  /*(String, int) mahasiswa;
  mahasiswa=('Tesya Eriana', 2141720024);
  print(mahasiswa);*/

var mahasiswa2 = ('Tesya Eriana', a: 2141720024, b: true, 'last');
print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2

}
