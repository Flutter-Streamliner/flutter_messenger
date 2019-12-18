import 'package:flutter/material.dart';
import 'package:flutter_messenger/config/palette.dart';

class InputWidget extends StatelessWidget {

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        border: Border(top:BorderSide(color: Palette.greyColor, width: 0.5)),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Material(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(
                icon: Icon(Icons.face, color: Colors.grey,),
                color: Palette.primaryColor,
                onPressed: (){},
              ),
            ),
          ),
          // Text input
          Flexible(
            child: Container(
              child: TextField(
                style: TextStyle(color: Palette.primaryTextColor, fontSize: 15.0),
                controller: textEditingController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Type a message',
                  hintStyle: TextStyle(color: Palette.greyColor),
                ),
              ),
            ),
          ),
          // Send message button
          Material(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: Icon(Icons.send, color: Colors.grey,),
                color: Palette.primaryColor,
                onPressed: (){},
              ),
            ),
          ),
        ],
      ),
    );
  }
}