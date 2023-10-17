import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorySide extends StatelessWidget {
  const StorySide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              height: 50,
              width: 50,

             // child: Image.asset('assets/icons/download (1).jpg'),
              decoration: BoxDecoration(
           
                border: Border.all(color: Colors.blue,width: 3,style: BorderStyle.solid,),
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/icons/default-avatar-profile-icon-of-social-media-user-vector.jpg',))
              ),
            ),
          );
        },
      ),
    );
  }
}