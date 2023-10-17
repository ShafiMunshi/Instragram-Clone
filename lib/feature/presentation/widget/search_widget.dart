import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: primaryColor),
        decoration: InputDecoration(border: InputBorder.none,
          hintText: 'Search',
          suffixIcon: Icon(Icons.search),
          
        ),
      ),
    );
  }
}