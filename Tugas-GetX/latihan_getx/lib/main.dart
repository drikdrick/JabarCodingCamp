import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'add_news.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX HTTP Post & Get',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'GetX HTTP Post & Get'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Get.put(Controller());
  var url = Uri.parse('https://achmadhilmy-sanbercode.my.id/api/v1/news');

  Future<void> getNews() async {
    var response = await http.get(url);
    var news = jsonDecode(response.body);
    controller.setNews(news["data"]);
  }

  Future<void> addNews(String title, String value) async {
    await http.post(url, body: {'title': title, 'value': value});
    getNews();
  }

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Obx(
        () => controller.news.isNotEmpty
            ? ListView.builder(
                itemCount: controller.news.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(controller.news[index]["title"]),
                    subtitle: Text(controller.news[index]["value"]),
                  );
                },
              )
            : const Center(
                child: Text("Berita tidak ada."),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var berita = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNews(),
            ),
          );
          addNews(berita["title"], berita["value"]);
        },
        tooltip: "Get News",
        child: const Icon(Icons.plus_one_rounded),
      ),
    );
  }
}

class Controller extends GetxController {
  RxList news = [].obs;

  void setNews(List _val) {
    news.value = _val;
  }
}
