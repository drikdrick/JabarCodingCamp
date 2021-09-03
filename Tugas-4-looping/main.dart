import 'dart:io';
//No. 1 Looping While
// void main(List<String> args) {
//   print("LOOPING PERTAMA");
//   for (var i = 2; i <=20; i+=2) {
//     print(i.toString()+" I love coding");
//   }
//   print("LOOPING KEDUA");
//   for (var i = 20; i >=2; i-=2) {
//     print(i.toString()+" I will become a mobile developer");
//   }
// }

//No. 2 Looping menggunakan for
// void main(List<String> args) {
//   for (var i = 1; i <= 20; i++) {
//     if (i % 2 == 0) {
//       print(i.toString() + " - Berkualitas");
//     } else {
//       if (i % 3 == 0) {
//       print(i.toString() + " - I Love Coding");
//       }
//       print(i.toString() + " - Santai");
//     }
//   }
// }

// //No. 3 Membuat Persegi Panjang #
// main(List<String> args) {
//   for (var i = 0; i < 4; i++) {
//     print('#'*8);
//   }
// }

//No. 4 Membuat Tangga
main(List<String> args) {
  for (var i = 1; i <= 7; i++) {
    print('#'*i);
  }
}