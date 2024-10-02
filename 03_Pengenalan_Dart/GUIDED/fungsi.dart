// Fungsi tanpa nilai kembalian
void cetakPesan(String pesan) {
  print(pesan); // Mencetak pesan
}

// Fungsi dengan nilai kembalian
int kaliAngka(int a, int b) {
  return a * b; // Mengembalikan hasil perkalian
}

void main() {
  // Memanggil fungsi dan menyimpan hasilnya
  int hasil = kaliAngka(4, 5);
  
  // Menampilkan hasil
  print('Hasil kali: $hasil');
  
  // Memanggil fungsi tanpa nilai kembalian
  cetakPesan('Halo, Dart!');

  // Fungsi greet
  greet('Alice', 25);
}

void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}
