import 'package:cm_music_app/pages/home/header.dart';
import 'package:cm_music_app/widgets/header_section.dart';
import 'package:cm_music_app/widgets/msuic_list.dart';
import 'package:cm_music_app/widgets/square_card.dart';
import 'package:flutter/material.dart';
import '../../widgets/scrollable_section.dart';
import 'musician_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const <Widget>[
              Header(),
              SizedBox(height: 40),
              MusicianBanner(title: "Trending Musician"),
              SizedBox(height: 40),
              HeaderSection(title: "Special Playlist"),
              ScrollableSection(
                children: <Widget>[
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                ],
              ),
              SizedBox(height: 40),
              HeaderSection(title: "Newest Albums"),
              ScrollableSection(
                children: <Widget>[
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                ],
              ),
              SizedBox(height: 40),
              HeaderSection(title: "Recommended Podcast"),
              ScrollableSection(
                children: <Widget>[
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                  SquareCard(title: "Global Viral 20", description: "1, 321K", image: "assets/images/album.png"),
                ],
              ),
              SizedBox(height: 40),
              HeaderSection(title: "Last Playing"),
              MusicList()
            ],
          ),
      )
    );
  }
}
