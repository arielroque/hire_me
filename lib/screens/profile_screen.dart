import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/utils/clipping_util.dart';
import 'package:hire_me/widgets/profile_card_widget.dart';
import 'package:hire_me/widgets/projects_list_widget.dart';

class ProfileUser extends StatefulWidget {
  @override
  _ProfileUserState createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {

    Widget bezierCurve(){
      return Padding(
        padding: const EdgeInsets.only(
            bottom: 2.0),
        child:ClipPath(
          clipper: ClippingClass(),
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 260.0,
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(icon: Icon(Icons.keyboard_backspace,color: Colors.white,size: 30,),),
                Container(
                  width: 180,
                  child: Image.asset("assets/man1.png"),
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert,color: Colors.white,),
                  onPressed: () {
                  },
                )
              ],),),
            color: Color(0xFFFF8A80),
          ),
        ),
      );
    }

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
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          color: Color(0xffffffff),
          child: Stack(
            children: [
              bezierCurve(),
              ProfileCard(),
              ProjectsList(),
            ],
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: hireMeButton,
    );
  }
}
