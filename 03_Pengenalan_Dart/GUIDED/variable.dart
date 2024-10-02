void main() {
  // Penamaan variable menggunakan camelCase
  /*String firstName = 'Praktikum';
  var lastName = 'PPB';
  final cuaca = 'cerah';

  print('Hari ini $firstName $lastName');*/

  var open = 8;
  var close = 17;
  var now = 10;
 
  // Ternary Operator
  var tokoStatus = now > open && now < close ? "Toko Buka" : "Toko Tutup";
  print(tokoStatus);
}
  /*if (now > open && now < close) {
    print("Toko Buka");
  } else {
    print("Toko Tutup");
  }
}*/

  // Switch Case
  /*var day = 'b';

  switch (day) {
    case 'a':
      print('Nilai Sangat Bagus');
      break;
    case 'b':
      print('Nilai Bagus');
      break; // Tambahkan break agar sesuai dengan pola
    case 'c':
      print('Nilai Cukup');
      break;
    default:
      print('Nilai Tidak Dikenali');
  }*/

