import 'package:flutter/material.dart';
import 'package:fruitset/profile.dart';

import 'drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton:FloatingActionButton.extended(
          onPressed: () {  },
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                  width: 1,
                  color: Colors.cyan
              )
          ),
          label: Text("Search"),
          icon: Icon(

            Icons.search,
          ),
        ),
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: false,
          actions: [
            Icon(
              Icons.notifications,
            ),
          ],
        ),
        drawer:appDrawer(context),

        // endDrawer: Drawer(),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: ListView(
                children: [
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is nfyjytgjgj flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Text("this is flutter")),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(20),
                            child: Text("this is flutter1")),
                        Container(
                            padding: EdgeInsets.all(20),
                            child: Text("this is flutter1")),
                        Container(
                            padding: EdgeInsets.all(20),
                            child: Text("this is flutter1")),
                        Container(
                            padding: EdgeInsets.all(20),
                            child: Text("this is flutter1")),
                        Container(
                            padding: EdgeInsets.all(20),
                            child: Text("this is flutter1")),
                        Container(
                            padding: EdgeInsets.all(20),
                            child: Text("this is flutter1")),
                      ],
                    ),
                  ),
                  //
                  // Container(
                  //   width: 300,
                  //   height: 300,
                  //   child: Image.asset("resources/images/asdf.jpg",fit: BoxFit.fill),
                  // )

                ],
              )
          ),
        )
    );
  }
}
