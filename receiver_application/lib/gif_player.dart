import 'package:flutter/material.dart';

class GifPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/fire.gif',
      colorBlendMode: BlendMode.saturation,
      filterQuality: FilterQuality.high,
      color: Colors.yellow,
      width: 100,
      height: 200,
    );
  }
}
