import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/page/credential/sign_in_page.dart';
import 'package:flutter_ui_1/feature/presentation/widget/form_containerA_widget.dart';
import 'package:flutter_ui_1/feature/presentation/widget/text_input_widget.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({super.key});

  TextEditingController _email=TextEditingController();
  TextEditingController _pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset('assets/icons/default-avatar-profile-icon-of-social-media-user-vector.jpg'),
                  ),
                  Positioned(
                    right: -15,
                    bottom: -25,
                    child: IconButton(onPressed: (){},icon: Icon(Icons.add_a_photo),color: Colors.blue))
                ],
              ),
            ),
            sizeVer(20),
            FormContainerWidget(hintText: 'username', controller: _email),
            sizeVer(20),
            FormContainerWidget(hintText: 'Email address', controller: _pass,),
            sizeVer(20),
            FormContainerWidget(hintText: 'Password', controller: _email),
            sizeVer(20),
            FormContainerWidget(hintText: 'Bio', controller: _pass,),
            sizeVer(20),
            ElevatedButton(onPressed: (){}, child: Text('Sign Up'),style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),)
            ,sizeVer(20),
            Row(
              children: <Widget>[
                  Expanded(
                    child: Divider(color: Colors.white,)),       
                  Text("  OR  "),        
                  Expanded(
                      child: Divider(color: Colors.white,)),
                ]
              ),
              sizeVer(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/Facebook-icon-isolated-on-transparent-background-PNG-removebg-preview.png',height: 30,color: Colors.white,),
                  sizeHor(10),
                  Text('Sign Up with Facebook'),
                ],
              ),

              sizeVer(30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? '),
                  TextButton(onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>SignInPage()), (route) => false);
                  }, child: Text('Log In',style: TextStyle(fontWeight: FontWeight.bold))),
                ],
              ),
        ]),
      ),
    );
  }
}