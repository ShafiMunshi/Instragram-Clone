import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/page/profile/edit_profile_page.dart';
import 'package:flutter_ui_1/feature/presentation/widget/button_widget/elevated_btn_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: Text('shafi.munshi'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more)),
        ],

      ),

      body: Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //profile image
                 Container(
                height: 80,
                width: 80,
      
               // child: Image.asset('assets/icons/download (1).jpg'),
                decoration: BoxDecoration(
             
                  border: Border.all(color: Colors.blue,width: 3,style: BorderStyle.solid,),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/icons/default-avatar-profile-icon-of-social-media-user-vector.jpg',))
                ),
              ),
              Spacer(),
              // post count
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('29',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),
                  Text('Posts',style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
              sizeHor(25),
             
              // follower count
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('206',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),
                  Text('Followers',style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
              sizeHor(25),
              // following count
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('357',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),
                  Text('Following',style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
              ],
            ),

            sizeVer(10),

            Text('Shafi Munsi',style: TextStyle(fontWeight: FontWeight.w500)),
            sizeVer(8),
            Text('Be yourself, kind & whatever you want....'),
            sizeVer(8),

           Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               myElevatedBtn(ontap: (){

               // Navigator.push(context, MaterialPageRoute(builder:(_)=>EditProfilePage()));
               Navigator.pushNamed(context, PageConst.editProfilePage);
               
               }, text: 'edit profile',width: 150,),
              
               sizeHor(8),
               myElevatedBtn(ontap: (){}, text: 'share profile',width: 150,)
             ],
           ),
            sizeVer(15),
           // all images 

            Expanded(
                child: GridView.builder(
                 shrinkWrap: true,
                //  addRepaintBoundaries: true,
                clipBehavior: Clip.antiAlias,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0.1),)),
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/icons/download (2).jpg',fit: BoxFit.cover,));
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}