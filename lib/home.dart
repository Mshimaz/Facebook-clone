import 'file:///C:/Users/shima/AndroidStudioProjects/facebook/lib/widgets/CircularButton.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/sections/HeaderButtonSection.dart';
import 'package:facebook/sections/StorySection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/widgets/Postcard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonPressed: () {
                  print("SEARCH SCREEN APPEARS");
                }),
            CircularButton(
                buttonIcon: Icons.chat,
                buttonPressed: () {
                  print("CHAT BOX APPEARS");
                })
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              profilePicture: mammooty,
              profileName: "Mammooty",
              postedat: "5h",
              showBluetick: true,
              postTitle: "The priest!!",
              postImage: postmammooty,
              postlikes: "10K",
              postcomments: "5K",
              postshares: "1K",
            ),
            thickDivider,
            PostCard(
              profilePicture: mohanlal,
              profileName: "Mohan Lal",
              postedat: "10h",
              showBluetick: true,
              postTitle: "Lets football",
              postImage: postmohanlal,
              postlikes: "11.5K",
              postcomments: "4.5K",
              postshares: "1.5K",
            ),
            thickDivider,PostCard(
              profilePicture: shimaz,
              profileName: "Shimaz",
              postedat: "Yesterday",
              showBluetick: false,
              postTitle: "tbh",
              postImage: postshimaz,
              postlikes: "500",
              postcomments: "20",
              postshares: "5",
            ),
            thickDivider,PostCard(
              profilePicture: prithviraj,
              profileName: "Prithviraj",
              postedat: "2 days ago",
              showBluetick: true,
              postTitle: "Kaduva!!",
              postImage: postprithviraj,
              postlikes: "9K",
              postcomments: "4K",
              postshares: "900",
            ),
          ],
        ),
      ),
    );
  }
}
