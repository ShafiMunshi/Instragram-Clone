import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/widget/profile_form_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        leading:BackButton(),
        title: Text('Edit Profile'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.done,color: Colors.blue)),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            Center(
              child: Container(width: 120,
                height: 120,
                
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            )           ,
            sizeVer(15),
            Center(
              child: Text('Change profile photo',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontSize: 20)),

            ),
            sizeVer(15),
            ProfileFormWidget(title: 'Name',),
            sizeVer(15),
            ProfileFormWidget(title: 'username',),
            sizeVer(15),
            ProfileFormWidget(title: 'Website',),
            sizeVer(15),
            ProfileFormWidget(title: 'Bio',),

          ],
        ),
      ),
    );
  }
}