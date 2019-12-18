import 'package:flutter/material.dart';
import 'package:flutter_messenger/widgets/chat_app_bar.dart';
import 'package:flutter_messenger/widgets/chat_list_widget.dart';
import 'package:flutter_messenger/widgets/input_widget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(), // Custom app bar for chat screen
        body: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              ChatListWidget(),
              InputWidget(),
            ],
          )
        ],)
      ),
    );
  }
}