import 'package:flutter/material.dart';


class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
  @required IconData buttonIcon,
  @required Color iconColor,
    @required Text buttonText,
    @required void Function() buttonAction
}){
    return FlatButton.icon(
        onPressed: buttonAction,
        icon: Icon(buttonIcon,
          color: iconColor,),
        label: buttonText
    );
  }
  @override
  Widget build(BuildContext context) {

    Widget verticalDivider (){
      return VerticalDivider(
        thickness: 1,
        color: Colors.grey[300],
      );
    }
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         headerButton(buttonIcon: Icons.video_call,
             iconColor: Colors.red,
             buttonText: Text("Live"),
             buttonAction: (){
              print("Go Live");
           }),
          verticalDivider(),
          headerButton(buttonIcon: Icons.photo_library,
              iconColor: Colors.green,
              buttonText: Text("Photo"),
              buttonAction: (){
                print("Take Photos");
              }),
          verticalDivider(),
          headerButton(buttonIcon: Icons.video_call,
              iconColor: Colors.purple,
              buttonText: Text("Room"),
              buttonAction: (){
                print("Create Chat Room");
              }),
        ],
      ),
    );
  }
}
