import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String assetPath;
  final double height;
  ImageBanner({required this.assetPath, this.height = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
<<<<<<< HEAD:lib/widget/image_banner.dart
          height: height,
=======
          height: 100.0,
>>>>>>> ThisIsLocalOnly:lib/screens/location_detail/image_banner.dart
        ),
        decoration: BoxDecoration(color: Colors.grey),
        child: Image.asset(assetPath, fit: BoxFit.cover));
  }
}
