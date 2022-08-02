import 'package:flutter/material.dart';
import 'music_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: Column(
        children: const <Widget>[
          MusicCard(cover: "assets/images/musician-photo.png", name: "Always in My Head", album: "Coldplay", artist: "Ghost Stories"),
          MusicCard(cover: "assets/images/musician-photo.png", name: "Always in My Head", album: "Coldplay", artist: "Ghost Stories"),
          MusicCard(cover: "assets/images/musician-photo.png", name: "Always in My Head", album: "Coldplay", artist: "Ghost Stories"),
        ],
      ),
    );
  }

}

