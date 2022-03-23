import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";
  @override
  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.RELEASE);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Chapter 32 Using Sound",
              ),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () => {
                    playSound(
                        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3")
                  },
                  child: Text("Play"),
                ),
                RaisedButton(
                  onPressed: () => pauseSound(),
                  child: Text("Pause"),
                ),
                RaisedButton(
                  onPressed: () => stopSound(),
                  child: Text("Stop"),
                ),
                RaisedButton(
                  onPressed: () => resumeSound(),
                  child: Text("Resume"),
                ),
                Text(durasi,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
              ],
            ))));
  }
}
