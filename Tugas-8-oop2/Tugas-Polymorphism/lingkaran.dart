import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  late double jari;
  get getJari => this.jari;

  set setJari(value) => value > 0 ? this.jari = value : this.jari = value * -1;

  @override
  double hitungLuas() {
    // TODO: implement hitungLuas
    return 3.14 * jari * jari;
  }

  @override
  double hitungKeliling() {
    // TODO: implement hitungKeliling
    return 3.14 * jari * 2;
  }
}
