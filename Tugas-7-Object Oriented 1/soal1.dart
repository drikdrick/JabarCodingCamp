main(List<String> args) {
  segitiga segi3 = new segitiga();

  double luasSegitiga;
  segi3.alas = 20;
  segi3.tinggi = 30;

  luasSegitiga = segi3.hitungLuas();
  print(luasSegitiga);
}

class segitiga {
  late double alas, tinggi;

  double hitungLuas(){
    return this.alas*this.tinggi/2;
  }
}