import 'package:chat_ui/pages/components/smalltext.dart';
import 'package:chat_ui/widgets/categories_selector.dart';
import 'package:chat_ui/widgets/favorite_contacts.dart';
import 'package:chat_ui/widgets/recent_charts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(onPressed: () {
          
        }, icon: Icon(Icons.menu, color: Colors.white,)
        ),
        title: SmallText(text: "Chat", 
        fontsize: 14, 
        color: Colors.white, 
        fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.search, color: Colors.white,))
        ],
      ),
      body: Column(
        children: [
          CategoriesSelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber.shade500,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: Column(
                children: [
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}