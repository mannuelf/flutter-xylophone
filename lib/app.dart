import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final player = AudioPlayer();

  void _playSound(String soundFile) async {
    final player = AudioPlayer();
    await player.setSourceAsset(soundFile);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.teal),
                    onPressed: () async {
                      _playSound('note1.wav');
                    },
                    child: const Text('Play')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                    onPressed: () async {
                      _playSound('note2.wav');
                    },
                    child: const Text('Play')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.pink),
                    onPressed: () async {
                      _playSound('note3.wav');
                    },
                    child: const Text('Play')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                    onPressed: () async {
                      _playSound('note4.wav');
                    },
                    child: const Text('Play')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: () async {
                      _playSound('note5.wav');
                    },
                    child: const Text('Play')),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                    onPressed: () async {
                      _playSound('note6.wav');
                    },
                    child: const Text('Play')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: () async {
                      _playSound('note7.wav');
                    },
                    child: const Text('Play')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
