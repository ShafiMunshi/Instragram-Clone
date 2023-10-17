import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_1/const.dart';
import 'package:flutter_ui_1/feature/presentation/widget/search_widget.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});

  TextEditingController _search =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        body: Padding(
          padding:  EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SearchWidget(controller: _search),
              sizeVer(10),
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
      ),
    );
  }
}