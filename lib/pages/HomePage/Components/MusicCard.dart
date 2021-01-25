import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  MusicCard(
      {@required this.songName,
      @required this.artist,
      @required this.album,
      @required this.playing});
  final String songName;
  final String artist;
  final String album;
  final bool playing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        color: playing ? Color(0xffeae9e8) : Colors.white,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/music_empty.jpg'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(songName, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(artist),
                Text(album, style: TextStyle(fontWeight: FontWeight.w200)),
                Spacer(),
              ],
            ),
            Spacer(),
            playing ? Image.asset('assets/images/giphy.webp') : Spacer()
          ],
        ),
      ),
    );
  }
}
