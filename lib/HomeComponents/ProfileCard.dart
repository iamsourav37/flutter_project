import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 20.0,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://bit.ly/3pzZf1U",
                ),
                backgroundColor: Colors.tealAccent,
                radius: 90,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Sourav Ganguly",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.pacifico().fontFamily,
                  ),
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  color: Colors.teal[100],
                  fontSize: 20.0,
                  fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.phone,
                          size: 27.0,
                          color: Colors.teal,
                        ),
                        Text(
                          "+91 9641999409",
                          style: TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.mail,
                          size: 27.0,
                          color: Colors.teal,
                        ),
                        Text(
                          "gangulys626@gmail.com",
                          style: TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
