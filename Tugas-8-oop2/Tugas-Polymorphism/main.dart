import '../../Tugas-7-Object Oriented 1/soal1.dart';
import 'lingkaran.dart';
import 'persegi.dart';
import 'segitiga.dart';
import 'bangun_datar.dart';

main(List<String> args) {
  BangunDatar _bangunDatar = BangunDatar();
  Lingkaran _lingkaran = Lingkaran();
  Persegi _persegi = Persegi();
  Segitiga _segitiga = Segitiga();

  _bangunDatar.hitungLuas();
  _bangunDatar.hitungKeliling();

  _lingkaran.setJari = 10.00;
  print("Luas Lingkaran: ${_lingkaran.hitungLuas()}");
  print("Keliling Lingkaran: ${_lingkaran.hitungKeliling()}\n");

  _persegi.setSisi = 5.00;
  print("Luas Persegi: ${_persegi.hitungLuas()}");
  print("Keliling Persegi: ${_persegi.hitungKeliling()}\n");

  _segitiga.setAlas=3.00;
  _segitiga.setTinggi=4.00;
  print("Luas Segitiga: ${_segitiga.hitungLuas()}");
  print("Keliling Segitiga: ${_segitiga.hitungKeliling()}\n");


}
