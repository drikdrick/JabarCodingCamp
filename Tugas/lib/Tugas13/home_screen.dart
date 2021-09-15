import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          Image.asset('assets/img/add_shopping_cart.png')
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome,",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color(0xFF54C5F8),
              ),
            ),
            const Text(
              "Fedrick",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w400,
                color: Color(0xFF01579B),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Search"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF54C5F8),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF99F0F0),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text("Recomended Places"),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  Image.asset('assets/img/Monas.png'),
                  Image.asset('assets/img/Roma.png'),
                  Image.asset('assets/img/Berlin.png'),
                  Image.asset('assets/img/Tokyo.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
