import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/numbers.dart';
/*import 'package:audioplayers/audioplayers.dart';*/

class Item extends StatelessWidget {
  const Item({Key? key, required this.number}) : super(key: key);
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color(0xffEf9235),
      child: Row(children: [
        Container(color: Color(0xffFFF6DC), child: Image.asset(number.image!)),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName!,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.enName!,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: IconButton(
            onPressed: () {
              final Player = AssetsAudioPlayer();
              print('Sound the');
            },
            icon: Icon(
              Icons.play_arrow,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
