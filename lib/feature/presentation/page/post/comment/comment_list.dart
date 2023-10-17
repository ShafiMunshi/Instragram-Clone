import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/widget/form_containerA_widget.dart';

class CommentList extends StatefulWidget {
  const CommentList({super.key, required this.username, required this.imageUrl, required this.comments, required this.date});

  final String username;
  final String imageUrl;
  final String comments;
  final String date;

  @override
  State<CommentList> createState() => _CommentListState();
}

class _CommentListState extends State<CommentList> {

  bool _isUserReplying = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor:secondaryColor,

      ),
      title: Text(widget.username),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizeVer(8),
          Text(widget.comments,style: TextStyle(color: Colors.white),),
          sizeVer(8),
          Row(
            children: [
              smallText(widget.date),
              sizeHor(10),
              GestureDetector(
                onTap: (){
                setState(() {
                    _isUserReplying = !_isUserReplying;
                });
                },
                child: smallText('Replay')),
              sizeHor(10),
              smallText('View Replays')

            ],
          ),

          _isUserReplying== true? sizeVer(10):sizeVer(0),
          _isUserReplying==true? Column( 
            // crossAxisAlignment: CrossAxisAlignment.end ,
            children: [
              ColoredBox(
                color: Colors.white.withOpacity(0.1),
                child: TextFormField(
                  enableSuggestions: true,
                  style: TextStyle(color: primaryColor),
                  
                  decoration: InputDecoration(
                    
                    suffix:  TextButton(onPressed: (){}, child: Text('Post',style: TextStyle(fontSize: 15,color: Colors.blue))),  
                    border: InputBorder.none,
                    hintText: 'post your replay.',
                    hintStyle: TextStyle(color: secondaryColor,)
                  )),
              ),
            ],
          ):Container(width: 0,height: 0,),  
        ],
      ),


      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),

    );
  }

  Widget smallText(String text){
    return  Text(text,style: TextStyle(color: secondaryColor,fontSize: 12));
  }
}