import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool storyBorder;
  final double width;
  final double height;
  Avatar(
      {this.storyBorder = false,
      @required this.displayStatus,
      @required this.displayImage,
      this.height = 50,
      this.width = 50});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 4, right: 4),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: storyBorder
                  ? Border.all(color: Colors.blueAccent, width: 2)
                  : null),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(displayImage, height: height, width: width),
          ),
        ),
        displayStatus
            ? Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
