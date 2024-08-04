import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  final AudioPlayer audioPlayer = AudioPlayer();
  void playNote(int nota) {
    audioPlayer.play(AssetSource('note$nota.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildContainer2(konteinerdinTusu: Colors.orange, nota: 1),
          buildContainer2(konteinerdinTusu: Colors.yellow, nota: 2),
          buildContainer2(konteinerdinTusu: Colors.green, nota: 3),
          buildContainer2(konteinerdinTusu: Colors.blue, nota: 4),
          buildContainer2(konteinerdinTusu: Colors.white, nota: 5),
          buildContainer2(konteinerdinTusu: Colors.purple, nota: 6),
          buildContainer2(konteinerdinTusu: Colors.amber, nota: 7),
        ],
      ),
    );
  }

  Expanded buildContainer2({
    required konteinerdinTusu,
    required int nota,
  }) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.grey.withOpacity(0.5),
          onTap: () {
            playNote(nota);
          },
          child: Ink(
            color: konteinerdinTusu,
          ),
        ),
      ),
    );
  }

  Expanded buildContainer(Color konteinerdinTusu) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.grey.withOpacity(0.5),
          onTap: () {
            print('Colors.red basildi');
          },
          child: Ink(
            color: konteinerdinTusu,
          ),
        ),
      ),
    );
  }
}
