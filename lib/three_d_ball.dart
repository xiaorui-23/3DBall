
import 'package:flutter/material.dart';
import 'package:three_d_ball/xball_view.dart';

class ThreeDBall extends StatelessWidget {

  /// data
  final List<String> data;
  /// container box width
  final double width;
  /// container box height
  final double height;
  /// data that needs to be highlighted
  final List<String>? highlightData;
  /// decoration
  final BoxDecoration? decoration;
  ///
  final Widget? topLeftWidget;
  ///
  final Widget? ballWidget;
  ///
  final Widget? bottomShadow;


  ThreeDBall({
    Key? key,
    required this.data,
    this.highlightData,
    this.width = 375,
    this.height = 375,
    this.decoration,
    this.topLeftWidget,
    this.ballWidget,
    this.bottomShadow
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: XBallView(
        mediaQueryData: MediaQuery.of(context),
        keywords: data,
        highlight: highlightData ?? [],
        width: width,
        decoration: decoration,
        topLeftImage: topLeftWidget ?? Image.asset(
                "assets/symptom_light.png",
                width: 260,
                height: 260,
                fit: BoxFit.fill,
                package: 'three_d_ball',
              ),
        ballWidget: ballWidget,
        bottomShadow: bottomShadow ?? Image.asset(
                  "assets/symptom_ball_shadow.png",
                  width: 260,
                  height: 20,
                  fit: BoxFit.fill,
                  package: 'three_d_ball',
                )
      ),
    );
  }
}
