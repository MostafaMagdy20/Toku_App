// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String? text;

  VoidCallback? onTap;

  Category({super.key, this.text , this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          padding: const EdgeInsets.only(top: 15, left: 15),
          width: double.infinity,
          height: 65,
          color: Colors.black,
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white, fontSize: 23),
          ),
        ),
      ),
    );
  }
}
