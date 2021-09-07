import 'dart:io';

teriak() {
  //No. 1
  return "Halo Sanbers";
}

kalikan(a, b) {
  //No. 2
  return a * b;
}

introduce(name, age, adress, hobby) {
  //No. 3
  return "Nama saya $name, umur saya $age, alamat saya di $adress, dan saya punya hobby yaitu $hobby";
}

faktorial(angka) {
  //No. 4
  if (angka <= 0) {
    return 1;
  }
  return angka *= faktorial(angka - 1);
}

looping(angka){
  if(angka<=1){
    return "*";
  }else if(angka<=0){
    return "Input salah!";
  }
  return "*"*angka+"\n"+looping(angka-1);
}

double sum(double a, double b)=> a+b;
double square(double a)=> a*a;

main(List<String> args) {
  // //No. 1
  // print(teriak());

  // //No. 2
  // var num1 = 12;
  // var num2 = 4;

  // var hasilkali = kalikan(num1, num2);
  // print(hasilkali);

  // //No. 3
  // var name = "Agus";
  // var age = 30;
  // var address = "Jln. Malioboro, Yogyakarta";
  // var hobby = "Gaming";

  // var perkenalan = introduce(name, age, address, hobby);
  // print(perkenalan);
  // //No. 4
  // var hasil = faktorial(-1);
  // print(hasil);

  // print(looping(5));

  print(sum(10.0,20.0));
  print(square(9.0));
}
