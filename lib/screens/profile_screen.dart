import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/utils/curved_clipper_util.dart';
import 'package:hire_me/widgets/profile_card.dart';

class ProfileUser extends StatefulWidget {
  @override
  _ProfileUserState createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {

    final hireMeButton = Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.yellow,
        child: MaterialButton(
          minWidth: 200,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Hire Him",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Viga',
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFF8A80),
        actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.more_vert),
          tooltip: 'Next page',
          onPressed: () {

          },
        )
      ],),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          color: Color(0xffffffff),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child:ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 260.0,
                    color: Color(0xFFFF8A80),
                  ),
                ),
              ),

              ProfileCard()
            ],
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: hireMeButton,
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height-40);
    path.quadraticBezierTo(size.width / 4, size.height,
        size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
