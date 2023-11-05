import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';

class FeaturedistViewItem extends StatelessWidget {
  const FeaturedistViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsManager.testImage
                )
              )
          ),
        ),
      );
  }
}