import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/utils/mock_data_util.dart';
import 'package:hire_me/widgets/slide_profile_widget.dart';
import 'package:hire_me/widgets/timeline_profile_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  Widget bottomNavigationBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.dashboard,
                        color: currentTab == 0 ? Colors.yellow : Colors.grey,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: currentTab == 0 ? Colors.yellow : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.bookmark,
                        color: currentTab == 1 ? Colors.yellow : Colors.grey,
                      ),
                      Text(
                        'Saved',
                        style: TextStyle(
                          color: currentTab == 1 ? Colors.yellow : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: currentTab == 2 ? Colors.yellow : Colors.grey,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: currentTab == 2 ? Colors.yellow : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.more_horiz,
                        color: currentTab == 3 ? Colors.yellow : Colors.grey,
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                          color: currentTab == 3 ? Colors.yellow : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Hire Me",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          backgroundColor: Color(0xFFCBD8DF),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[

            SliderProfile(MockData.getProfilesData()),
            Expanded(child: TimelineProfile(
              MockData.getProfilesData(),
            ),)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, size: 30),
          backgroundColor: Colors.yellow,
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: bottomNavigationBar());
  }
}
