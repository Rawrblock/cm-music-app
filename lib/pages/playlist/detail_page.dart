import 'package:cm_music_app/api/playlist.dart';
import 'package:cm_music_app/widgets/msuic_list.dart';
import 'package:flutter/material.dart';
import 'package:cm_music_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/playlist.dart';
import 'header.dart';

class PlaylistDetailPage extends StatefulWidget {
  const PlaylistDetailPage({Key? key}) : super(key: key);

  @override
  State createState() => _PlaylistDetailPageState();

}

class _PlaylistDetailPageState extends State<PlaylistDetailPage> {
  late Future<Playlist> futurePlaylist;

  @override
  void initState() {
    super.initState();
    futurePlaylist = detail("1");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Playlist>(
        future: futurePlaylist,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            Playlist playlist = snapshot.data!;

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 375,
                    height: 235,
                    child: SvgPicture.asset('assets/images/playlist-back-image.svg'),
                  ),
                  Column(
                    children: <Widget>[
                      Header(name: playlist.name, description: playlist.description),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:   <Widget>[
                          const PrimaryButton(
                              width: 221,
                              child: Text("Play")
                          ),
                          SizedBox(width: 10),
                          PrimaryButton(
                              width: 20,
                              color: btnSecondaryColor,
                              child: SvgPicture.asset("assets/icons/download.svg")),
                        ],
                      ),
                      const SizedBox(height: 34),
                      MusicList(musicList: playlist.musicList)
                    ],
                  )
                ],
              ),
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  const [
              Center(child: CircularProgressIndicator()),
            ],
          );
        }
      )
    );
  }


}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required Widget this.child,
    this.width = 44,
    this.color = primary
  }) : super(key: key);

  final Widget child;

  final double width;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          fixedSize: MaterialStateProperty.all(Size(width, 40)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          // padding: MaterialStateProperty.all(EdgeInsetsDirectional.all())
        ),
        child: child,
    );
  }
}





