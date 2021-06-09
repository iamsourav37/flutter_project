import 'package:flutter/material.dart';

class DesiProgrammer extends StatefulWidget {
  const DesiProgrammer({Key? key}) : super(key: key);

  @override
  _DesiProgrammerState createState() => _DesiProgrammerState();
}

class _DesiProgrammerState extends State<DesiProgrammer> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desi Programmer Tutorial"),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        child: ListView(
          children: [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.purple[400],
        currentIndex: selectedItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.travel_explore_rounded,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
            ),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library,
            ),
            label: 'Vlogs',
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedItem = index;
          });
        },
      ),
    );
  }
}
