import 'package:agora_flutter_quickstart/pages/trainer_page.dart';
import 'package:agora_flutter_quickstart/pages/videodetail_page.dart';
import 'package:agora_flutter_quickstart/widgets/appBar_widget.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import '../data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:expansion_card/expansion_card.dart';
import './call_page.dart';

class TrainingPage extends StatefulWidget {
  static const routeName = '/trainingPage';
  @override
  _TrainingPageState createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  int activePage;
  ClientRole _role = ClientRole.Broadcaster;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    activePage = 0;
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MyAppbar("Choose your Way", "Trainings", false),
          SliverToBoxAdapter(
            child: buildPageIndicator(),
          ),
          // Divider(),
          SliverFillRemaining(
            child: PageView(
              children: [
                page_1(),
                page_2(),
                page_3(),
              ],
              controller: _pageController,
              onPageChanged: (index) {
                if (index != activePage) {
                  setState(() {
                    activePage = index;
                  });
                }
              },
            ),
          )
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: GestureDetector(
      //   // Set onVerticalDrag event to drag handlers of controller for swipe effect
      //   onVerticalDragUpdate: _bottomNavBarController.onDrag,
      //   onVerticalDragEnd: _bottomNavBarController.onDragEnd,
      //   child: FloatingActionButton.extended(
      //     label: Text("Sessions"),
      //     elevation: 2,
      //     backgroundColor: Colors.deepOrange,
      //     foregroundColor: Colors.white,

      //     //Set onPressed event to swap state of bottom bar
      //     onPressed: () => _bottomNavBarController.swap(),
      //   ),
      // ),

      // // Actual expandable bottom bar
      // bottomNavigationBar: BottomExpandableAppBar(
      //   bottomAppBarColor: Colors.blue,
      //   expandedHeight: 550,
      //   expandedDecoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(20),
      //     border: Border.all(color: Colors.blue, width: 6),
      //   ),
      //   horizontalMargin: 16,
      //   controller: _bottomNavBarController,
      //   shape: AutomaticNotchedShape(
      //       RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
      //   //expandedBackColor: Theme.of(context).backgroundColor,
      //   expandedBody: Center(
      //     child: Text("Sessions"),
      //   ),
      //   bottomAppBarBody: Container(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Row(
      //       mainAxisSize: MainAxisSize.max,
      //       children: <Widget>[
      //         Expanded(
      //           child: InkWell(
      //             onTap: () =>
      //                 Navigator.of(context).pushNamed(TrainingPage.routeName),
      //             child: Text(
      //               "Trainings",
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //         Spacer(
      //           flex: 2,
      //         ),
      //         Expanded(
      //           child: InkWell(
      //             onTap: () => null,
      //             child: Text(
      //               "Settings",
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget buildPageIndicator() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30),
          right: Radius.circular(30),
        ),
      ),
      elevation: 4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            onPressed: activePage == 0 ? () {} : null,
            child: Text("In-Personal"),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30),
                right: Radius.circular(30),
              ),
            ),
            disabledElevation: 0,
            disabledColor: Colors.grey,
          ),
          RaisedButton(
            onPressed: activePage == 1 ? () {} : null,
            child: Text("Offline Videos"),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30),
                right: Radius.circular(30),
              ),
            ),
            disabledElevation: 0,
            disabledColor: Colors.grey,
          ),
          RaisedButton(
            onPressed: activePage == 2 ? () {} : null,
            child: Text("Online Classes"),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30),
                right: Radius.circular(30),
              ),
            ),
            disabledElevation: 0,
            disabledColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget page_1() {
    List<Widget> children = [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "Featured Workout Collections",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "YesterdayDream",
            fontSize: 25,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          "Get Guidance to reach your goals",
          style: TextStyle(
            color: Colors.grey,
            fontFamily: "YesterdayDream",
            fontSize: 25,
          ),
        ),
      ),
    ];

    for (int i = 0; i < workOutCategoryData.length; i++) {
      children.add(buildWorkout(workOutCategoryData[i]));
    }
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return children[index];
        },
        itemCount: children.length,
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
      ),
    );
  }

  Widget page_2() {
    List<Widget> children = [
      Container(
        height: 200,
        margin: const EdgeInsets.all(10),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.asset(
              "assets/images/speed.jpg",
              fit: BoxFit.fill,
            );
          },
          itemCount: 3,
          pagination: new SwiperPagination(),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "What's New",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    ];
    for (int i = 0; i < offlineVideosData.length; i++) {
      children.add(buildVideos(offlineVideosData[i]));
    }
    return ListView(
      children: children,
    );
  }

  Widget buildVideos(final data) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        VideoDetail.routeName,
        arguments: {
          'category': data.category,
          'workouts': data.workouts,
        },
      ),
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Container(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //color: Colors.red,
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  data.category,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                width: 150,
              ),
              Divider(),
              Container(
                width: 240,
                height: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      "assets/images/Strength.jpg",
                      fit: BoxFit.fill,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0x50828585),
                            const Color(0x20e3e3e3),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.play_circle_outline,
                      color: Colors.grey,
                      size: 50,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget page_3() {
    return ListView(
      children: Classs(),
    );
  }

  List<Widget> Classs() {
    List<Widget> ClassList = [];

    for (int i = 0; i < liveClassData.length; i++) {
      ClassList.add(buildClass(liveClassData[i]));
    }
    return ClassList;
  }

  Widget buildWorkout(final data) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(TrainerPage.routeName, arguments: data.trainers),
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Container(
          height: 200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  data.image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  data.name,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildClass(final data) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ExpansionCard(
        borderRadius: 20,
        //backgroundColor: Colors.blue,
        trailing: Icon(
          Icons.arrow_drop_down,
          color: Colors.black,
        ),
        onExpansionChanged: (value) {},
        background: Image.asset(
          data.image,
          fit: BoxFit.fill,
          height: 300,
        ),
        title: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                data.title,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                data.instructor,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "${data.date}, ${data.time}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "${data.participants} Attendees",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  child: Text("Join"),
                  onPressed: () {
                    onJoin(data.channelName);
                  },
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onJoin(String channelName) async {
    if (channelName.isNotEmpty) {
      // await for camera and mic permissions before pushing video page
      await _handleCameraAndMic();
      // push video page with given channel name
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallPage(
            channelName: channelName,
            role: _role,
          ),
        ),
      );
    }
  }

  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }
}
