import 'package:facebook/assets.dart';
import 'package:facebook/sections/HeaderButtonSection.dart';
import 'package:facebook/widgets/Bluetick.dart';
import 'package:facebook/widgets/avatars.dart';
import 'package:facebook/widgets/lcsButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profilePicture;
  final String profileName;
  final String postedat;
  final bool showBluetick;
  final String postTitle;
  final String postImage;
  final String postlikes;
  final String postcomments;
  final String postshares;
  PostCard({
    @required this.profilePicture,
    @required this.profileName,
    @required this.postedat,
    @required this.postTitle,
    @required this.postImage,
    @required this.postlikes,
    @required this.postcomments,
    @required this.postshares,
    this.showBluetick = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postHeaderSection(),
          textSection(),
          imageSection(),
          footerSection(),
          Divider(thickness: 1,),
          LcsButtonSection(),
        ],
      ),
    );
  }
  Widget footerSection(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.thumb_up,color: Colors.white,size: 10,),
                ),
                SizedBox(width: 5,),
                displayText(label: postlikes)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: postcomments),
                SizedBox(width: 5,),
                displayText(label: "Comments"),
                SizedBox(width: 10,),
                displayText(label: postshares),
                SizedBox(width: 5,),
                displayText(label: "Shares"),
                SizedBox(width: 10,),
                Avatar(displayStatus: false, displayImage: profilePicture,width: 25,height: 25,),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_drop_down,color: Colors.grey[700],),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget displayText({@required String label}){
    return Text(label,style: TextStyle(color: Colors.grey[700],fontSize: 16));
  }

  Widget textSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget postHeaderSection() {
    return ListTile(
      leading: Avatar(
        displayImage: profilePicture,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            profileName,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBluetick ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(postedat),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {
          print("MOre options!!");
        },
      ),
    );
  }
}
