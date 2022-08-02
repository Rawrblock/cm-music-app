import 'package:cm_music_app/widgets/scrollable_section.dart';
import 'package:flutter/material.dart';
import '../../widgets/header_section.dart';
import 'musician_card.dart';


class MusicianBanner extends StatelessWidget {
  const MusicianBanner({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HeaderSection(title: title),
        const ScrollableSection(children: <Widget>[
          MusicianCard(name: "Rihanna", photo: "assets/images/musician-photo.png", category: "ARTIS"),
          MusicianCard(name: "Rihanna", photo: "assets/images/musician-photo.png", category: "ARTIS"),
          MusicianCard(name: "Rihanna", photo: "assets/images/musician-photo.png", category: "ARTIS"),
          MusicianCard(name: "Rihanna", photo: "assets/images/musician-photo.png", category: "ARTIS")
        ])
      ],
    );
  }
  
}



