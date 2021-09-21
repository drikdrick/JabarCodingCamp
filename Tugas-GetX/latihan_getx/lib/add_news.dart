import 'package:flutter/material.dart';

class AddNews extends StatefulWidget {
  const AddNews({Key? key}) : super(key: key);

  @override
  _AddNewsState createState() => _AddNewsState();
}

class _AddNewsState extends State<AddNews> {
  TextEditingController titleController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GetX HTTP Post & Get",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tambah Berita"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text('Title'),
                  ),
                ),
                TextFormField(
                  controller: valueController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    label: Text('Value'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      {
                        "title": titleController.text,
                        "value": valueController.text
                      },
                    );
                  },
                  child: const Text("Publish Berita"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
