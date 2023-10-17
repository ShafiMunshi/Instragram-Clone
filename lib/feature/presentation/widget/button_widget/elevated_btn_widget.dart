import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myElevatedBtn extends StatelessWidget {
  const myElevatedBtn({super.key, required this.ontap, required this.text, required this.width});

  final VoidCallback ontap;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: width,
          child: Text(text),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(.5),
          ),
          //
      ),
    );
  }
}