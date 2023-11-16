import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/pages/components/smalltext.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallText(text: "Favorite Contacts", 
              fontsize: 18, 
              color: Colors.black, 
              fontWeight: FontWeight.bold),
              IconButton(onPressed: () {
                
              }, icon: Icon(Icons.more_horiz, 
              size: 30, 
              color: Colors.blueGrey,))
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 120,
            color: Colors.blue,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(favorites[index].imageUrl),
                    ),
                    SizedBox(height: 10,),
                    SmallText(text: favorites[index].name, 
                    fontsize: 14, color: Colors.black, 
                    fontWeight: FontWeight.bold),
                  ],
                ),
              );
             },
            ),
          )
        ],
      ),
    );
    
  }
}