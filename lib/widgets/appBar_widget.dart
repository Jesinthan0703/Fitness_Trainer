import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../pages/training_page.dart';
import '../pages/profile_page.dart';

class MyAppbar extends StatelessWidget {
  final String content;
  final String title;
  final bool ishome;

  MyAppbar(this.content, this.title, this.ishome);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () =>
              Navigator.of(context).pushNamed(ProfilePage.routeName),
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.only(top: 120, left: 30),
          //color: Colors.amber,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [
                const Color(0xff00e0ff),
                const Color(0xff095e79),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // height: 100,
          // width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 350,
                child: Text(
                  content,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
              if (ishome)
                InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(TrainingPage.routeName),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
        ),
        //centerTitle: true,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      expandedHeight: 200.0,
      floating: true,
      pinned: true,
      snap: true,
      elevation: 50,
      backgroundColor: const Color(0xff00e0ff),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    // return PreferredSize(
    //   preferredSize: Size.fromHeight(300),
    //   child: Card(
    //     color: Colors.lightBlue,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(30),
    //     ),
    //     child: Column(
    //       children: [
    //         AppBar(
    //           elevation: 0,
    //           backgroundColor: Colors.transparent,
    //         ),
    //         Container(
    //           padding: const EdgeInsets.only(top: 160, left: 30),
    //           //color: Colors.amber,
    //           height: 236,
    //           width: double.infinity,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.only(
    //                 bottomLeft: Radius.circular(30),
    //                 bottomRight: Radius.circular(30)),
    //             //color: Colors.amber,
    //           ),
    //           child: Text(
    //             content,
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 35,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
