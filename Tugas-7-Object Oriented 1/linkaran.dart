class lingkaran {
  late double jari_jari;

  void setJarijari(double value) {
    if (value < 0) {
      value *= -1; //value akan dikalikan -1 jika <0
    }
    this.jari_jari = value;
  }

  double getJariJari() {
    return this.jari_jari;
  }

  double getLuas() {
    return 3.14 * this.jari_jari * this.jari_jari;
  }
}
