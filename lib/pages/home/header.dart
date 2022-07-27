import 'package:cm_music_app/pages/home/category_banner.dart';
import 'package:flutter/material.dart';

import 'notification_area.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: 357,
      child: Stack(children: [
        NotificationArea(screenSize: screenSize),
        Column(
          children: const <Widget>[
            SizedBox(height: 137),
            CategoryBanner()
          ],
        )
      ]),
    );
  }
}
