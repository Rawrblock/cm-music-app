import 'package:cm_music_app/theme.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          Text(
              title,
              style: const TextStyle(
                  color: Color(0xFF002150),
                  fontSize: 22
              )
          ),
          const Spacer(),
          Text(
            "View All",
            style: TextStyle(
                fontSize: 14,
                color: primary.shade600
            ),
          )
        ],
      ),
    );
  }
}