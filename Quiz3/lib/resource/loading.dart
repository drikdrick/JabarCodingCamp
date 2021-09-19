import 'package:flutter/material.dart';

Widget loadingProcess(height, width) {
  return Center(
    child: Container(
      width: double.infinity,
      height: height * 0.2,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blue,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
          SizedBox(
            height: 25,
          ),
          Text(
            "Mohon Tunggu..",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          )
        ],
      ),
    ),
  );
}
