import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/models/profile_model.dart';

class SliderProfile extends StatefulWidget {
  final List<Profile> profiles;

  const SliderProfile(this.profiles);

  @override
  _SliderProfileState createState() => _SliderProfileState();
}

class _SliderProfileState extends State<SliderProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      height: MediaQuery.of(context).size.height * 0.24,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.profiles.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                    width: 100.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(18.0)),
                    ),
                    child: Text("oi")),
              ),
            );
          }),
    );
  }
}
