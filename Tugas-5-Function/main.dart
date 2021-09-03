teriak() {
  return "Halo Sanbers";
}
kalikan(a,b){
  return a*b;
}
introduce(name, age, adress,hobby){
  return "Nama saya $name, umur saya $age, alamat saya di $adress, dan saya punya hobby yaitu $hobby";
}
faktorial(angka){
  if (angka<=0) {
    return 1;
  }
  return angka*=faktorial(angka-1);
}
main(List<String> args) {
  //No. 1
  print(teriak());
  
  //No. 2
  var num1=12;
  var num2=4;

  var hasilkali = kalikan(num1, num2);
  print(hasilkali);

  //No. 3
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby ="Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);
  //No. 4
  var hasil = faktorial(6);
  print(hasil);
}
