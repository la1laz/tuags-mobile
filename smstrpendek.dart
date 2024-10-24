class MataKuliah {
  // Fields untuk MataKuliah
  String nama;
  int sks;

  // Constructor dengan this keyword
  MataKuliah(this.nama, this.sks);

  // Method untuk menampilkan detail MataKuliah
  void tampilkanDetail() {
    print('Mata Kuliah: $nama, SKS: $sks');
  }
}

class Mahasiswa {
  // Fields untuk Mahasiswa
  String nama;
  int nim;
  List<MataKuliah> daftarMataKuliah = [];

  // Constructor untuk Mahasiswa
  Mahasiswa(this.nama, this.nim);

  // Method untuk menambah MataKuliah ke daftar
  void tambahMataKuliah(MataKuliah mk) {
    daftarMataKuliah.add(mk);
    print('Mata kuliah ${mk.nama} berhasil ditambahkan!');
  }

  // Method untuk menampilkan daftar MataKuliah yang sudah didaftarkan
  void tampilkanDaftarMataKuliah() {
    print('\nDaftar Mata Kuliah Semester Pendek untuk $nama:');
    if (daftarMataKuliah.isEmpty) {
      print('Belum ada mata kuliah yang didaftarkan.');
    } else {
      for (var mk in daftarMataKuliah) {
        mk.tampilkanDetail();
      }
    }
  }
}

void main() {
  // Membuat objek Mahasiswa
  Mahasiswa mhs = Mahasiswa('Laila', 07352111027);

  // Membuat dua mata kuliah untuk semester pendek
  MataKuliah mk1 = MataKuliah('Keamanan Jaringan', 3);
  MataKuliah mk2 = MataKuliah('Pemrograman Web', 3);

  // Menambahkan dua mata kuliah ke daftar mahasiswa
  mhs.tambahMataKuliah(mk1);
  mhs.tambahMataKuliah(mk2);

  // Menampilkan daftar mata kuliah yang sudah didaftarkan
  mhs.tampilkanDaftarMataKuliah();
}
