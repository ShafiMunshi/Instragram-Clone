import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/page/post/comment/comment_list.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text('Comments')),
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    shape: BoxShape.circle,

                  ),
                ),
                sizeHor(10),
                Text('Username',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: primaryColor)),
                sizeVer(10),
               
                
                
              ],
            ),
            
            sizeVer(10),
            Text('This is very beautiful place..',style: TextStyle(color: primaryColor, ),)
            ,sizeVer(10),
            Divider(color: secondaryColor),

            sizeVer(10),
            Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return CommentList(username: '@ajax', imageUrl: 's', comments: 'This is beeautiful', date: '12/04/2004');
              }
            )),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ColoredBox(
                color: Colors.white.withOpacity(0.1),
                child: TextFormField(
                  enableSuggestions: true,
                  style: TextStyle(color: primaryColor),
                  
                  decoration: InputDecoration(
                    suffix:  TextButton(onPressed: (){}, child: Text('Post',style: TextStyle(fontSize: 15,color: Colors.blue))),  
                    border: InputBorder.none,
                    hintText: 'Enter your comment..',
                    hintStyle: TextStyle(color: secondaryColor,)
                  )),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}