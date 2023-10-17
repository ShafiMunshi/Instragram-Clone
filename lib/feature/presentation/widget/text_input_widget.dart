import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
   TextInputWidget({super.key, required this.hintText, required this.controller, this.isPass=false, required this.theme,});
  final String hintText;
  final TextEditingController controller;
  final bool isPass;
   ThemeData theme;
  Color borderColor=Colors.black;
  @override
  Widget build(BuildContext context) {
    theme==ThemeData.dark()?borderColor=Colors.white.withOpacity(0.5):borderColor=Colors.black;
    return  TextField(
          controller: controller,
          obscureText: isPass?true: false,
            decoration: InputDecoration(
              hintText: hintText,
              
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color:borderColor)) ,
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color:borderColor))),
            keyboardType: TextInputType.emailAddress,
            // expands: true,
          );
  }
}