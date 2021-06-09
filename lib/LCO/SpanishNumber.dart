import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SpanishNumber extends StatefulWidget {
  const SpanishNumber({Key? key}) : super(key: key);

  @override
  _SpanishNumberState createState() => _SpanishNumberState();
}

class _SpanishNumberState extends State<SpanishNumber> {
  late AudioPlayer audioPlayer;

  List<String> audioList = [
    'assets/spanishNumbers/one.wav',
    'assets/spanishNumbers/two.wav',
    'assets/spanishNumbers/three.wav',
    'assets/spanishNumbers/four.wav',
    'assets/spanishNumbers/five.wav',
    'assets/spanishNumbers/six.wav',
    'assets/spanishNumbers/seven.wav',
    'assets/spanishNumbers/eight.wav',
    'assets/spanishNumbers/nine.wav',
    'assets/spanishNumbers/ten.wav',
  ];
  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  void playAudio(int index) async {
    await audioPlayer.setAsset(audioList[index]);
    audioPlayer.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish Number"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: audioList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                this.playAudio(index);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.purple,
                child: Center(
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
