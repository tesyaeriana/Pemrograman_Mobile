import 'dart:ffi';

void main(List<String> arguments) {
  var gifts = {
    //key: Value
    'first': 'partridge',
    'second': 'truthledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  /* print(gifts);
  print(nobleGases);*/

  //Langkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'Tesya Eriana';
  gifts['second'] = '2141720024';
  mhs1['nama'] = 'Tesya Eriana';
  mhs1['nim'] = '2141720024';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'Tesya Eriana';
  nobleGases[10] = '2141720024';
  mhs2[1] = 'Tesya Eriana';
  mhs2[3] = '2141720024';
  nobleGases[18] = 'argon';

  print(gifts['first']);
  print(gifts['second']);
  print(nobleGases[2]);
  print(nobleGases[10]);
  print(mhs1['nama']);
  print(mhs1['nim']);
  print(mhs2[1]);
  print(mhs2[3]);
}
