import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tugas12/Tugas15/home_screen.dart';
import 'package:tugas12/Tugas15/index.dart';
import 'package:tugas12/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Sanber Flutter",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF54C5F8)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    'assets/img/flutter.png',
                    height: 100,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Username",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18.5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.indigo),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18.5,
                  ),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color(0xFF29B6F6),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      child: const Text("Login"),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF54C5F8),
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Index(),
                            ),
                            (route) => false);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Does not have an account?"),
                      Text(
                        "Register",
                        style: TextStyle(
                          color: Color(0xFF29B6F6),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset('assets/img/Roma.png'),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset('assets/img/Monas.png'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
