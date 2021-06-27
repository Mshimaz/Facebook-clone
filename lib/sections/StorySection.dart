import 'package:facebook/assets.dart';
import 'package:facebook/widgets/StoryCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            story: dulquer,
            avatar: dulquer,
            createStoryButton: true,
          ),
          StoryCard(
              labelText: "Mammooty", story: postmammooty, avatar: mammooty),
          StoryCard(
              labelText: "Mohan Lal", story: postmohanlal, avatar: mohanlal),
          StoryCard(
              labelText: "Prithviraj",
              story: postprithviraj,
              avatar: prithviraj),
          StoryCard(labelText: "Shimaz", story: postshimaz, avatar: shimaz),
        ],
      ),
    );
  }
}
