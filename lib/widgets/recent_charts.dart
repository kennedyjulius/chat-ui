import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/pages/chat_screen.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message chat = chats[index];
                    return InkWell(
                      focusColor: Colors.grey,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      ChatScreen(user: chat.sender) ,)),
                      child: Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5, right: 2),
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        decoration: BoxDecoration(
                          color: chat.unread ? Color.fromARGB(255, 221, 193, 206): Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(radius: 30, 
                                backgroundImage: AssetImage(chat.sender.imageUrl),
                                ),
                                SizedBox(width: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(chat.sender.name, style: TextStyle(
                                      color: Colors.grey, fontSize: 15, 
                                      fontWeight: FontWeight.bold),),
                                      SizedBox(height: 10,),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.45,
                                      child: Text(chat.text, style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15, 
                                        fontWeight: FontWeight.w600),
                                        overflow: TextOverflow.ellipsis,
                                    
                                        ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(chat.time, style: TextStyle(
                                      color: Colors.grey, fontSize: 15, 
                                      fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 5,),
                                
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                child: Text('New', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12, 
                                  fontWeight: FontWeight.bold),)),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                    
                   },
                  ),
                ),
      ),
    );
  }
}