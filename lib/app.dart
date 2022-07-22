import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final player = AudioPlayer();

  void _playSound(String soundFile) async {
    final player = AudioPlayer();
    await player.setSourceAsset(soundFile);
  }

  Expanded buildKey(String soundFile, Color color) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: color),
            onPressed: () async {
              _playSound(soundFile);
            },
            child: const Text('Play')));
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
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                buildKey('note1.wav', Colors.blue),
                buildKey('note2.wav', Colors.green),
                buildKey('note3.wav', Colors.yellow),
                buildKey('note4.wav', Colors.amber.shade300),
                buildKey('note5.wav', Colors.amber.shade600),
                buildKey('note6.wav', Colors.amber.shade800),
                buildKey('note7.wav', Colors.red),
              ],
            ),
          ),
        ));
  }
}
