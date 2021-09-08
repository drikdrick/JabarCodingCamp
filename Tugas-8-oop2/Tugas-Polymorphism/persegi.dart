import 'bangun_datar.dart';

class Persegi extends BangunDatar {
  late double sisi;
  double get getSisi => this.sisi;

  set setSisi(double value) =>
      value > 0 ? this.sisi = value : this.sisi = value * -1;
  @override
  double hitungLuas() {
    // TODO: implement hitungLuas
    return sisi * sisi;
  }

  @override
  double hitungKeliling() {
    // TODO: implement hitungKeliling
    return sisi * 4;
  }
}
