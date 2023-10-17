import 'package:flutter/material.dart';

const Color  backGroundColor=Color.fromRGBO(0, 0, 0, 1.0);
const Color  darkGreyColor=Color.fromRGBO(97, 97, 97, 1);
const Color primaryColor=Colors.white;
const Color secondaryColor=Colors.grey;

// when we need to divide some space ,, we can simply use this instead of using sizedbox
Widget sizeVer(double height){
  return  SizedBox(height: height);
}

Widget sizeHor(double width){
  return  SizedBox(width: width);
}

class PageConst{
  static const String editProfilePage='edit-profile-page';
   
}