import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatars.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          chatRoomButton,
          Avatar(displayImage: dulquer,displayStatus: true,),
          Avatar(displayImage: mammooty,displayStatus: true),
          Avatar(displayImage: mohanlal,displayStatus: true),
          Avatar(displayImage: prithviraj,displayStatus: true),
          Avatar(displayImage: shimaz,displayStatus: true),
          Avatar(displayImage: mohanlal,displayStatus: true),
          Avatar(displayImage: mammooty,displayStatus: true),
          Avatar(displayImage: prithviraj,displayStatus: true),
        ],
      ),
    );
  }
  Widget chatRoomButton = Container(
    padding: EdgeInsets.only(left: 5,right: 5),
    child: OutlineButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create \n Room",
        style: TextStyle(color: Colors.blue),
      ),
      shape: StadiumBorder(),
      borderSide: BorderSide(color: Colors.blue[100], width: 2),
    ),
  );
}
