// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tugas12/Tugas12/Chart_model.dart';
import 'package:tugas12/Tugas12/DrawerScreen.dart';

class telegram extends StatefulWidget {
  const telegram({Key? key}) : super(key: key);

  @override
  _telegramState createState() => _telegramState();
}

class _telegramState extends State<telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telegram"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: const drawer_screen(),
      body: ListView.separated(
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[i].profileUrl.toString()),
            ),
            title: Text(
              items[i].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[i].message),
            trailing: Text(items[i].time),
          );
        },
        separatorBuilder: (ctx, i) {
          return const Divider();
        },
        itemCount: items.length,
      ),
    );
  }
}
