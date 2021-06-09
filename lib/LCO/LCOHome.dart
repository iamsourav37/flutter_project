import 'package:flutter/material.dart';
import 'package:my_first_app/utils/MyRoutes.dart';

class LCOHomeScreen extends StatefulWidget {
  const LCOHomeScreen({Key? key}) : super(key: key);

  @override
  _LCOHomeScreenState createState() => _LCOHomeScreenState();
}

class _LCOHomeScreenState extends State<LCOHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LearnCodeOnline flutter course"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("LCO"),
              accountEmail: Text("lco.com"),
            ),
            ListTile(
              leading: Icon(Icons.audiotrack),
              title: Text("Spanish Number"),
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.spanishNumberRoutes);
              },
            ),
            ListTile(
              leading: Icon(Icons.games_outlined),
              title: Text("Tic Tac Toe"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.games_rounded),
              title: Text("Scratch and win"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.games_rounded),
              title: Text("Camera"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
