import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  Widget textName() {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "JOHN DOE",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 27, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          SizedBox(
            width: 3,
          ),
          Container(
            width: 18,
            child: Material(
              color: Colors.white,
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.green,
                  shape: CircleBorder(),
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textOccupation() {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Ui/UX designer",
            style: TextStyle(fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }

  Widget textDescription() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 30, right: 30),
      child: Column(
        children: <Widget>[
          Text(
            "apaixonado por não sei o quefksfklsfsdfksfd",
            style: TextStyle(fontWeight: FontWeight.w300),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }

  Widget textFollow() {}

  final followButton = Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
      width: 120,
      height: 35,
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.yellow,
        child: MaterialButton(
          minWidth: 0,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "FOLLOW",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Viga', fontSize: 12.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 100, left: 20, right: 20),
      child: Container(
        height: 280,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 4,
            child: Column(
              children: <Widget>[
                textName(),
                textOccupation(),
                textDescription(),
                followButton,
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "FOLLOWERS",
                            style: TextStyle(fontWeight: FontWeight.w200),
                          ),
                          Text(
                            "FOLLOWING",
                            style: TextStyle(fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "2500",
                            style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20 ),
                          ),
                          Text(
                            "257",
                            style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
                          )
                        ],
                      ),)
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
