import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:my_first_app/utils/MyRoutes.dart';

import 'LCO/LCOHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final profileImage = "https://avatars.githubusercontent.com/u/35891854?v=4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Again bro"),
      ),
      drawer: Drawer(
        child: Container(
          // color: Colors.purple,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(profileImage),
                  ),
                  accountName: Text("Sourav Ganguly"),
                  accountEmail: Text("gangulys626@gmail.com"),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.profileCardRoutes);
                },
                leading: Icon(Icons.person_outline),
                title: Text("My Profile"),
                trailing: Icon(CupertinoIcons.forward),
              ),
              ListTile(
                onTap: () {
                  print("lco home");
                  Navigator.pushNamed(context, MyRoutes.lcoHomeRoutes);
                },
                leading: Icon(Icons.school),
                title: Text("LCO course"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.bgChangerRoute);
                },
                leading: Icon(Icons.change_circle),
                title: Text("Background Changer"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.games),
                title: Text("Tic Tac Toe"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.desiProgrammerRoute);
                },
                leading: Icon(Icons.explore),
                title: Text("Desi Programmer Testing"),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Check out my profile card in left menu",
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
