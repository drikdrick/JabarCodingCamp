//Soal No.1 (Range)
range(startNum, finishNum) {
  List<int> bilangan = [];
  if (startNum > finishNum) {
    for (var i = startNum; i >= finishNum; i--) {
      bilangan.add(i);
    }
  } else {
    for (var i = startNum; i <= finishNum; i++) {
      bilangan.add(i);
    }
  }

  return bilangan;
}

//Soal No. 2 (Range with Step)
rangeWithStep(startNum, finishNum, step) {
  List<int> bilangan = [];
  if (startNum > finishNum) {
    for (var i = startNum; i >= finishNum; i -= step) {
      bilangan.add(i);
    }
  } else {
    for (var i = startNum; i <= finishNum; i += step) {
      bilangan.add(i);
    }
  }

  return bilangan;
}

//Soal No. 3 (List Multidimensi)
void dataHandling(List input) {
  input.forEach((element) {
    print("Nomor ID: " + element[0]);
    print("Nama Lengkap: " + element[1]);
    print("TTL: " + element[2]);
    print("Hobi: " + element[3] + "\n");
  });
}

//Soal No. 4 (Balik Kata)
balikKata(input) {
  try {
    var output = String.fromCharCodes(input.runes.toList().reversed);
    return output;
  } catch (e) {
    return 'Terdapat kesalahan, silahkan coba kembali.';
  }
}

void main(List<String> args) {
  // print(range(12, 10)); // No. 1
  // print(rangeWithStep(5, 2, 1)); // No. 2
  //No.3
  var input = [
    ["001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["002", "Dika Sembiring", "Medan", "10/10/1992", "Gitar"],
    ["003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["004", "Bintang Sanjaya", "Martapura", "6/4/1970", "Berkebun"],
  ];

  // dataHandling(input);

  //No. 4
  print(balikKata("Kasur"));
  print(balikKata("SanberCode"));
  print(balikKata("Haji"));
  print(balikKata("racecar"));
  print(balikKata("Sanbers"));
}
