import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class GetDetailScreen extends StatefulWidget {
  List? value;

  GetDetailScreen({Key? key, required this.value}) : super(key: key);

  @override
  _GetDetailScreenState createState() => _GetDetailScreenState();
}

class _GetDetailScreenState extends State<GetDetailScreen> {
  get value => widget.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail screen news"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              value![0],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              value![1],
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
