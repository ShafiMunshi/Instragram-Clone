import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/page/credential/sign_up_page.dart';
import 'package:flutter_ui_1/feature/presentation/widget/form_containerA_widget.dart';
import 'package:flutter_ui_1/feature/presentation/widget/text_input_widget.dart';

class SignInPage extends StatelessWidget {
   SignInPage({super.key});

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
            ThemeData==ThemeData.dark()?
          SvgPicture.asset('assets/icons/instagram-text-icon.svg'):Image.asset('assets/icons/Instagram_name_logo_transparent_PNG-removebg-preview.png',height: 150,)
         , sizeVer(20),
         FormContainerWidget(hintText: 'Enter Your Email', controller: _email,passwordField: false,),
         sizeVer(20),
         FormContainerWidget(hintText: 'Enter Your password', controller: _pass,passwordField: true,),
         sizeVer(20),
         ElevatedButton(onPressed: (){}, child: Text('Log In'),style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),)
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
              Text('Login with Facebook'),
            ],
          ),

          sizeVer(30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account? '),
              TextButton(onPressed: (){
                 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>SignUpPage()), (route) => false);
              }, child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
        ]),
      ),
    );
  }
}