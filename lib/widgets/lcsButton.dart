import 'package:flutter/material.dart';


class LcsButtonSection extends StatelessWidget {
  Widget lcsButton({
    @required IconData buttonIcon,
    Color iconColor = Colors.grey,
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
          lcsButton(buttonIcon: Icons.thumb_up,
              buttonText: Text("Like"),
              buttonAction: (){
                print("Like the picture");
              }),
          verticalDivider(),
          lcsButton(buttonIcon: Icons.chat,
              buttonText: Text("Comment"),
              buttonAction: (){
                print("Comment on Photo");
              }),
          verticalDivider(),
          lcsButton(buttonIcon: Icons.add_to_home_screen,
              buttonText: Text("Share"),
              buttonAction: (){
                print("Share the photo");
              }),
        ],
      ),
    );
  }
}
