import 'dart:math';

import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  late double alas;
  late double tinggi;
  double get getAlas => this.alas;

  set setAlas(value) => value > 0 ? this.alas = value : this.alas = value * -1;

  get getTinggi => this.tinggi;

  set setTinggi(value) =>
      value > 0 ? this.tinggi = value : this.tinggi = value * -1;

  @override
  double hitungLuas() {
    // TODO: implement hitungLuas
    return alas * tinggi / 2;
  }

  @override
  double hitungKeliling() {
    // TODO: implement hitungKeliling
    return alas + tinggi + sqrt(alas * alas + tinggi * tinggi);
  }
}
