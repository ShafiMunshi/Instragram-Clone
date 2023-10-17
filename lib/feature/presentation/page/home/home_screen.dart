import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/page/home/story_side.dart';
import 'package:flutter_ui_1/feature/presentation/page/post/comment/comment_page.dart';
import 'package:flutter_ui_1/feature/presentation/page/post/update_post_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset('assets/icons/Instagram_name_logo_transparent_PNG-removebg-preview.png',height: 100,),
        actions: [SizedBox(height:30,width: 30,child: Image.asset('assets/icons/messenger.png',color: Colors.white,))],
      ),
      body: Padding(padding: EdgeInsets.only(top: 0,left: 20,right: 20),
        child: Column(
          children: [
            // story side
            StorySide(),
            Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/icons/Instagram name logo transparent PNG.jpg'),
                        ),
                        sizeHor(15),
                        Text('@username',style: TextStyle(fontWeight: FontWeight.w700)),
                        Spacer(),
                        Icon(Icons.more_vert_outlined),
                        
                      ],
                    ),
                    sizeVer(8),
                    SizedBox(
                      width: double.maxFinite,
                      
                      child: Image.asset('assets/icons/download (2).jpg',fit: BoxFit.cover,)),
                    Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: (){}, icon: Icon(Icons.favorite,size: 21,)),
                     
                        IconButton(
                           padding: EdgeInsets.zero,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>CommentPage()));
                          }, icon: Icon(Icons.comment_outlined,size: 21,)),
                       
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: (){}, icon: Icon(Icons.send_outlined,size: 21,)),
                        Spacer(),
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>UpdatePostPage()));
                        }, icon: Icon(Icons.save_alt_rounded,size: 21,))
                       
                      ],
                    ),
                    Row(
                      children: [
                        Text('@shafi_munshi  ',style: TextStyle(fontWeight: FontWeight.w700)),
                        Text('Welcome to my new art model'),
                      ],
                    ),
                    sizeVer(3),
                    Text('view 10 comment'),
                     sizeVer(3),
                    Text('12/04/2004'),
                    
                  ],
                );
              },
            )),
          ],
        ),
      )
    );
  }
}