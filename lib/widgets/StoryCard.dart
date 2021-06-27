import 'package:facebook/assets.dart';
import 'package:facebook/widgets/CircularButton.dart';
import 'package:facebook/widgets/avatars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryButton;
  StoryCard(
      {@required this.labelText,
      @required this.story,
      @required this.avatar,
      this.createStoryButton = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 5),
      width: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          createStoryButton
              ? Positioned(
                  top: 5,
                  left: 5,
                  child: CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonPressed: () {
                      print("Add Story!!");
                    },
                  ),
                )
              : Positioned(
                  top: 5,
                  left: 5,
                  child: Avatar(
                    displayStatus: false,
                    displayImage: avatar,
                    storyBorder: true,
                  )),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
