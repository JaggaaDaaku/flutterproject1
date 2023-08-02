import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class onScreen extends StatefulWidget {
  const onScreen({super.key,required this.i});
  final int i;

  @override
  State<onScreen> createState() => _onScreenState(i);
}

class _onScreenState extends State<onScreen> {
  _onScreenState(this.i);
  final int i;
  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages:  [Text("$i")],
      enableLoop: true,
      fullTransitionValue: 500, // default is 400 milliseconds
      waveType: WaveType.liquidReveal,
      slideIconWidget: Icon(Icons.arrow_back_ios_new,
          size: MediaQuery.of(context).size.width * 0.1),
      positionSlideIcon: 0.5,
    );
  }
}