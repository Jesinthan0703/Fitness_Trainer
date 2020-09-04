import '../data.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import '../widgets/appBar_widget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  HomePage() : super();
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin {
  PageController _pageController;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  //int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
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
      backgroundColor: Theme.of(context).backgroundColor,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          MyAppbar("Hello, Ajay", "Home", true),
          SliverFillRemaining(
            child: buildPage(),
          )
        ],
      ),
      // drawer: Drawer(),
      bottomSheet: SolidBottomSheet(
        elevation: 4,
        toggleVisibilityOnTap: true,
        headerBar: Container(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.arrow_drop_up),
              Text("Sessions"),
              Icon(Icons.arrow_drop_up),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
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
        ),
        body: Container(
          color: Colors.white,
          height: 30,
          child: Center(
            child: Text(
              "No Sessions are available",
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPage() {
    return ListView(
      children: [
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Container(
                height: 200,
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
              Positioned(
                top: 20,
                left: 5,
                child: Container(
                  width: 120,
                  height: 30,
                  child: Text(
                    "Trending",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.red[900], width: 10),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0x70434444),
                        const Color(0x20ffffff),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        buildListHorizontal("Top picks for you"),
        SizedBox(
          height: 20,
        ),
        buildListVertical("5 Minutes work out"),
      ],
    );
  }

  Widget buildListHorizontal(String title) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Card(
          child: Container(
            height: 250,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            // color: Colors.blue,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 200,
                      height: 200,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          strengthTrainerData[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      "Core Burn Out",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: strengthTrainerData.length,
              shrinkWrap: true,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          top: -30,
          left: 10,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              //height: 30,
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.blueGrey[600],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildListVertical(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.blueGrey[600],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 500,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          // color: Colors.blue,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            strengthTrainerData[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Core Burn Out",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        icon: Icon(Icons.play_circle_outline),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              );
            },
            scrollDirection: Axis.vertical,
            itemCount: strengthTrainerData.length,
            shrinkWrap: true,
          ),
        ),
      ],
    );
  }
}
//
