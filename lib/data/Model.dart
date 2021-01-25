import 'package:equatable/equatable.dart';

class Music extends Equatable {
  final String songName;
  final String artist;
  final String album;
  final bool playing;

  const Music(this.songName, this.artist, this.album, this.playing);

  @override
  List<Object> get props => [songName, artist, album, playing];

  @override
  bool get stringify => true;
}
