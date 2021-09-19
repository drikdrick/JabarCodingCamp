import 'package:flutter/material.dart';
import 'package:tugas12/Tugas14/Models/user_model.dart';
import 'package:http/http.dart' as http;

class PostDataApi extends StatefulWidget {
  const PostDataApi({Key? key}) : super(key: key);

  @override
  _PostDataApiState createState() => _PostDataApiState();
}

class _PostDataApiState extends State<PostDataApi> {
  UserModel? user;
  String? msg, data;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController valueController = TextEditingController();

  void _submitted(BuildContext context) async {
    final String title = titleController.text;
    final String value = valueController.text;

    final String? hasil = await createUSer(title, value);

    setState(() {
      msg = hasil;
    });

    Navigator.pop(context);
  }

  Future<String?> createUSer(String title, String value) async {
    try {
      Dialogs.showLoadingDialog(context, _keyLoader);
      var apiUrl =
          Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/news");
      final response =
          await http.post(apiUrl, body: {"title": title, "value": value});

      if (response.statusCode == 200) {
        final String responseString = response.body;
        return responseString;
      }
      Navigator.of(context).pop(context);
    } catch (e) {
      e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Data"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Title"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("value"),
              ),
              maxLines: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            msg == null ? Container() : Text(msg!),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _submitted(context),
        tooltip: 'Tambah Data',
        child: const Icon(Icons.add),
      ),
    );
  }
}

final GlobalKey<State> _keyLoader = GlobalKey<State>();

class Dialogs {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
            child: SimpleDialog(
              backgroundColor: Colors.black54,
              children: [
                Center(
                  child: Column(
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Please Wait...",
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            onWillPop: () async => false);
      },
    );
  }
}
