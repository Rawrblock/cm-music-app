import 'package:cm_music_app/pages/home.dart';
import 'package:cm_music_app/pages/login.dart';
import 'package:cm_music_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CmMusic());
}

class CmMusic extends StatelessWidget {
  const CmMusic({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '村民音乐',
      theme: ThemeData(
        primarySwatch: primary,
        tabBarTheme: tabBarTheme
      ),
      // 初始路由
      initialRoute: "/",
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
      },
    );
  }
}
