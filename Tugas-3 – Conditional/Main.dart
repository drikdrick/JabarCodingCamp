import 'dart:io';

//1. Ternary operator
// void main(List<String> args) {
//   final response = stdin.readLineSync();
//   response == 'y'
//       ? print("anda akan menginstall aplikasi dart")
//       : print("aborted");
// }

//2. If-else if dan else
// void main(List<String> args) {
//   print("Nama : ");
//   var nama = stdin.readLineSync();
//   print("Peran : ");
//   var peran = stdin.readLineSync();
//   if (nama!.isNotEmpty) {
//     if (peran != null) {
//       print("Selamat datang di Dunia Werewolf, " + nama);
//       if (peran == 'Penyihir') {
//         print("Halo " +
//             peran +
//             " " +
//             nama +
//             ", kamu dapat melihat siapa yang menjadi werewolf!");
//       } else if (peran == 'Guard') {
//         print("Halo " +
//             peran +
//             " " +
//             nama +
//             ", kamu akan membantu melindungi temanmu dari serangan werewolf.");
//       } else if (peran == 'Werewolf') {
//         print("Halo " +
//             peran +
//             " " +
//             nama +
//             ", Kamu akan memakan mangsa setiap malam!");
//       } else {
//         print("Halo " + nama + ", Pilih peranmu untuk memulai game!");
//       }
//     }
//   } else {
//     print("Nama harus diisi!");
//   }
// }

//3. Switch case
// void main(List<String> args) {
//   var hari = stdin.readLineSync();
//   switch (hari) {
//     case "Senin":
//       print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
//       break;
//     case "Selasa":
//       print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
//       break;
//     case "Rabu":
//       print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
//       break;
//     case "Kamis":
//       print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
//       break;
//     case "Jumat":
//       print("Hidup tak selamanya tentang pacar.");
//       break;
//     case "Sabtu":
//       print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
//       break;
//     case "Minggu":
//       print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
//       break;
//     default:
//     print("Hari tidak diketahui!");
//   }
// }

//4. Switch Case
void main(List<String> args) {
  var hari = 21;
  var bulan = 1;
  var tahun = 1945;
  var Bulan;

  switch (bulan) {
    case 1:
      Bulan = "Januari";
      break;
    case 2:
      Bulan = "Februari";
      break;
    case 3:
      Bulan = "Maret";
      break;
    case 4:
      Bulan = "April";
      break;
    case 5:
      Bulan = "Mei";
      break;
    case 6:
      Bulan = "Juni";
      break;
    case 7:
      Bulan = "Juli";
      break;
    case 8:
      Bulan = "Agustus";
      break;
    case 9:
      Bulan = "September";
      break;
    case 10:
      Bulan = "Oktober";
      break;
    case 11:
      Bulan = "November";
      break;
    case 12:
      Bulan = "Desember";
      break;
    default:
  }

  print(hari.toString() + " " + Bulan + " " + tahun.toString());
}
