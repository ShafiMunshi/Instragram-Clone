import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/widget/profile_form_widget.dart';

class UpdatePostPage extends StatelessWidget {
  const UpdatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text('Edit Post'),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.done,color: Colors.blue,))],
        ),
      body:  Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,

                    ),
                  ),

                  sizeVer(10),
                  Text('Usernamse',style: TextStyle(fontSize: 16,color: primaryColor,fontWeight: FontWeight.w400)),
                  sizeVer(10),
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: secondaryColor,

                    ),
                  ),
                  sizeVer(10),
                  ProfileFormWidget(title: 'description'),

              ]
            )
          )
    );
  }

  // showmodalbottomsheet(BuildContext context){
  //   return showModalBottomSheet(context: context, builder: (context){
  //     return Container(
  //       height: 150,
  //       decoration: BoxDecoration(color: backGroundColor.withOpacity(.8)),
  //       child: SingleChildScrollView(
          
  //         child:
  //       ),
  //     );
  //   });
  // }
}