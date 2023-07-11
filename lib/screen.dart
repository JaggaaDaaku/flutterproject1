import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class onScreen extends StatelessWidget {
  const onScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: const [],
      enableLoop: true,
      fullTransitionValue: 500, // default is 400 milliseconds
      waveType: WaveType.liquidReveal,
      slideIconWidget: Icon(Icons.arrow_back_ios_new,
      size: MediaQuery.of(context).size.width * 0.1),
      positionSlideIcon: 0.5,
    );
  }
}