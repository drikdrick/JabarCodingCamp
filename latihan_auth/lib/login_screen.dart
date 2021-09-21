import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:latihan_auth/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        "Latihan Auth",
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
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Email",
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
                        controller: _passwordController,
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
                            setState(() {
                              isLoading = true;
                            });
                            try {
                              _firebaseAuth
                                  .signInWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text)
                                  .then(
                                (value) {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Selamat Datang!"),
                                    ),
                                  );
                                },
                              );
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    e.toString(),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Does not have an account?"),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isLoading = true;
                              });
                              _firebaseAuth
                                  .createUserWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text)
                                  .then((value) {
                                setState(() {
                                  isLoading = false;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      backgroundColor: Colors.blue,
                                      content: Text(
                                          "Pendaftaran berhasil! Silahkan Login."),
                                    ),
                                  );
                                });
                              });
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Color(0xFF29B6F6),
                              ),
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
            isLoading
                ? Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Center(
                        child: Column(
                          children: const [
                            CircularProgressIndicator(),
                            Text("Mohon Tunggu.."),
                          ],
                        ),
                      ),
                    ),
                  )
                : const SizedBox(
                    height: 0,
                  ),
          ],
        ),
      ),
    );
  }
}
