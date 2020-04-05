import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hire_me/utils/mock_data_util.dart';

class ProjectsList extends StatefulWidget {
  @override
  _ProjectsListState createState() => _ProjectsListState();
}

class _ProjectsListState extends State<ProjectsList> {
  Widget textProject() {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "PROJECTS",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget projectsList(){
    return Container(
      height: 150,
      child: GridView.count(
          childAspectRatio: 1.4,
          crossAxisCount: 2,
          children: List.generate(MockData.getProjectsPhoto().length, (index) {
            return Center(
                child:Card(
                    color: Colors.white,
                    child: Container(
                      child: Image.asset(MockData.getProjectsPhoto()[index]),
                    ))
            );
          })),
    );
  }

  final viewButton = Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
      width: 80,
      height: 35,
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.yellow,
        child: MaterialButton(
          minWidth: 100,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "VIEW ALL",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Viga', fontSize: 10.0, color: Colors.white),
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
      padding: EdgeInsets.only(top: 420, left: 30, right: 30),
      child: Container(
        height: 280,
        child: Card(
            elevation: 0,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    textProject(),
                    viewButton,
                  ],
                ),
                SizedBox(height: 10,),
                projectsList()
              ],
            )),
      ),
    );
  }
}
