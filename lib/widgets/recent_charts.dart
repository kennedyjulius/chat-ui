import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message chat = chats[index];
                return Row(
                  children: [
                    CircleAvatar(radius: 35, backgroundImage: AssetImage(chat.sender.imageUrl),),
                    Text(chat.sender.name,)
                  ],
                );
               },
              ),
    );
  }
}