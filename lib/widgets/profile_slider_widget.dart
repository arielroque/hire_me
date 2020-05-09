import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/models/profile_model.dart';
import 'package:hire_me/screens/profile_screen.dart';
import 'package:hire_me/utils/utils.dart';

class ProfileSlider extends StatefulWidget {
  final List<Profile> profiles;

  const ProfileSlider(this.profiles);

  @override
  _ProfileSliderState createState() => _ProfileSliderState();
}

class _ProfileSliderState extends State<ProfileSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      height: MediaQuery.of(context).size.height * 0.19,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.profiles.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileUser(profile: widget.profiles[index],index: index,)));
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 80,
                    child: Column(children: <Widget>[
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Utils.getRandomColor(index),
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(50.0)),
                      ),
                      child: Container(
                          width: 180.0,
                          height: 180.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(widget.profiles[index].circlePhoto).image))
                      ),
                    ),
                      SizedBox(height: 1,),
                      Text(widget.profiles[index].name,style: TextStyle(fontWeight: FontWeight.w500),)
                  ],),)
                ));
          }),
    );
  }
}
