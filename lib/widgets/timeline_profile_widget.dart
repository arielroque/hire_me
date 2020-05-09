import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/models/profile_model.dart';
import 'package:hire_me/screens/profile_screen.dart';
import 'package:hire_me/utils/utils.dart';

class TimelineProfile extends StatefulWidget {
  final List<Profile> profiles;
  final String query;

  const TimelineProfile(this.profiles, this.query);

  @override
  _TimelineProfileState createState() => _TimelineProfileState();
}

class _TimelineProfileState extends State<TimelineProfile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.profiles.length,
        itemBuilder: (context, index) {

         // Without filter
          return widget.query == null || widget.query == ""
              ? GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileUser(
                                  profile: widget.profiles[index],
                                  index: index,
                                )));
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                    child: Container(
                      height: 160,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Utils.getRandomColor(index),
                          elevation: 10,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 140,
                                child:
                                    Image.asset(widget.profiles[index].photo),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        widget.profiles[index].name
                                            .toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 27,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        widget.profiles[index].occupation,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        "${widget.profiles[index].yearsExperience} Years",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                )

              //Filtering with search

              : widget.profiles[index].name.contains(widget.query)
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileUser(
                                      profile: widget.profiles[index],
                                      index: index,
                                    )));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        child: Container(
                          height: 160,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Utils.getRandomColor(index),
                              elevation: 10,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 140,
                                    child: Image.asset(
                                        widget.profiles[index].photo),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            widget.profiles[index].name
                                                .toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 27,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            widget.profiles[index].occupation,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            "${widget.profiles[index].yearsExperience} Years",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                    )
                  : Container();
        });
  }
}
