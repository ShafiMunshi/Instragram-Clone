import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/page/profile/edit_profile_page.dart';

class OnGenerateRoute{
  static Route<dynamic>? route(RouteSettings settings){
    final args=settings.arguments;
    
    switch (settings.name) {
      case PageConst.editProfilePage: 
        return routeBuilder(EditProfilePage());
      default:
        {NoPageFound();}
    }
  }
  
 
}



dynamic routeBuilder(Widget child) {
    return MaterialPageRoute(builder: (context)=>child);
}



class NoPageFound extends StatelessWidget {
  const NoPageFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    );
  }
}