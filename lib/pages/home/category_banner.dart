import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryCard(
              title: 'HiHop',
              description: '1.4K Played',
              image: 'assets/images/banner.png',
              onPress: () {}
          ),
          CategoryCard(
              title: 'HiHop',
              description: '1.4K Played',
              image: 'assets/images/banner.png',
              onPress: () {}
          ),
          CategoryCard(
              title: 'HiHop',
              description: '1.4K Played',
              image: 'assets/images/banner.png',
              onPress: () {}
          ),
        ],
      ),
    );
  }


}