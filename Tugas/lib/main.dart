import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:tugas12/Tugas12/Telegram.dart';
// import 'package:tugas12/Tugas13/home_screen.dart';
import 'package:tugas12/Tugas15/login_screen.dart';
// import 'package:tugas12/Tugas14/Models/get_data.dart';
// import 'package:tugas12/Tugas14/Models/post_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const LoginScreen(),
    );
  }
}
