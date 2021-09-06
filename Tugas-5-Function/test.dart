void main(List<String> args) {
  // int i = 1;
  // int j = 1;

  // var panjang = 8;

  // var lebar = 8;

  // var papan = "";

  // for (j = 1; j <= lebar; j++) {
  //   if (j % 2 == 1) {
  //     for (i = 1; i <= panjang; i++) {
  //       if (i % 2 == 1) {
  //         papan += " ";
  //       } else {
  //         papan += "#";
  //       }
  //     }
  //   } else {
  //     for (i = 1; i <= panjang; i++) {
  //       if (i % 2 == 1) {
  //         papan += "#";
  //       } else {
  //         papan += " ";
  //       }
  //     }
  //   }
  //   print(papan);

  //   papan = "";
  // }
  printmsg('Hellow World', 'John', 'Mike');
}

void printmsg(message, from, [to='unknown']){
  print('"$message", from $from to $to');
}