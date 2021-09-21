// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'get_detail.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  _GetDataScreenState createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  final String url = "https://achmadhilmy-sanbercode.my.id/api/v1/news";
  List? data;
  @override
  void initState() {
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async {
    getJsonData(context);
  }

  Future<String?> getJsonData(BuildContext context) async {
    var response =
        await http.get(Uri.parse(url), headers: {"Accept": "application/json"});
    print(response.body);
    setState(() {

      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Data API"),
      ),
      body: RefreshIndicator(
        child: ListView.builder(
          itemCount: data == null ? 0 : data!.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: () {
                      var data1 = data![index]['title'];
                      var data2 = data![index]['value'];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetDetailScreen(
                              value: [data1, data2],
                              ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data![index]['title'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Icon(Icons.chevron_right),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Divider(
                            height: 20,
                            thickness: 1,
                            // endIndent: 25,
                            // indent: 15,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
        onRefresh: _getRefreshData,
      ),
    );
  }
}
