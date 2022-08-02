import 'package:flutter/material.dart';

// 定义颜色变量
const int _bluePrimaryValue = 0xFF0041C4;

// 配置默认颜色
const MaterialColor primary = MaterialColor(
    _bluePrimaryValue,
    <int, Color> {
        50: Color(0xFFE7E9F9),
        100: Color(0xFFC2C8F1),
        200: Color(0xFF98A4E7),
        300: Color(0xFF6C81DE),
        400: Color(0xFF4765D7),
        500: Color(0xFF0C49CF),
        600: Color(_bluePrimaryValue),
        700: Color(0xFF0037B8),
        800: Color(0xFF002CAD),
        900: Color(0xFF00189A),
    }
);

// 配置tabs样式
const TabBarTheme tabBarTheme = TabBarTheme(
   // 选中状态
   labelColor: primary,
   unselectedLabelColor: Color(0xFF7A869A),
);

const TextStyle primaryText = TextStyle(
    fontSize: 16,
    color: Color(0xFF002150)
);

const TextStyle secondaryText = TextStyle(
    color: Color(0xFF7A869A),
    fontSize: 12
);