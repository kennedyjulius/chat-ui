import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  
  const ChatScreen({Key? key, 
  required this.user
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text(widget.user.name),
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.more_horiz, 
          color: Colors.white,))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Column(
          children: [
            ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
              return ;
             },
            ),
          ],
        ),
      ),
    );
  }
}