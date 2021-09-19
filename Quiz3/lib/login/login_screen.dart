import 'package:flutter/material.dart';

import 'package:quiz3/home/home_screen.dart';
import 'package:quiz3/resource/loading.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Screen App"),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 40),
                  child: const Text(
                    "JCC Quiz 3",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "https://jabarcodingcamp.id/assets/img/Illustration/RK.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Username "),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Password"),
                  ),
                ),
                TextButton(
                    onPressed: () {}, child: const Text("Forgot Password")),
                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    // textColor: Colors.white,
                    style: raisedButtonStyle,
                    child: const Text("Login"),
                    onPressed: () {
                      // var data1 = nameController.text.toString();
                      //soal 1 dan 2 silahkan kerjakan disini atau boleh menggunakan function
                      //Soal 1
                      setState(() {
                        isLoading = true;
                      });
                      Future.delayed(const Duration(seconds: 1)).then((value) {
                        setState(() {
                          isLoading = false;
                        });
                        if (nameController.text == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text(
                                  "Username tidak boleh kosong. Coba lagi."),
                            ),
                          );
                        } else if (passwordController.text ==
                            'jabarcodingcamp123') {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homescreen(
                                        username: nameController.text,
                                      )),
                              (route) => false);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Password salah. Coba lagi."),
                            ),
                          );
                        }
                      });

                      //
                      //end coding 1 dan 2 sampai sini
                    },
                  ),
                ),
                Row(
                  children: <Widget>[
                    const Text("   Does not have account?"),
                    TextButton(
                        // textColor: Colors.blue,
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {})
                  ],
                ),
              ],
            ),
            isLoading
                ? loadingProcess(height, width)
                : const SizedBox(
                    height: 0,
                  ),
          ],
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.grey[300],
  primary: Colors.blue[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);
