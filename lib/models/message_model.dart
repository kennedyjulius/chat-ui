import 'package:chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender, 
    required this.time, 
    required this.text, 
    required this.isLiked, 
    required this.unread,  
  }
  );
}

// you - current user

final User currentUser = User(
  id: 0, 
  name: 'Current User', 
  imageUrl: 'assets/pic1.jpg', 
  //id: id, 
  //imageUrl: imageUrl
  );

  // users
final User  greg = User(
    id: 1, 
    name: 'Greg', 
    imageUrl: 'assets/pic1.jpg', 
    );
final User james = User(
      id: 2, 
      name: 'James', 
      imageUrl: 'assets/pic3.jpeg', 
      );
final User john = User(
        id: 3, 
        name: 'John', 
        imageUrl: 'assets/pic4.jpg', 
        );
final User maina = User(
          id: 4, 
          name: 'maina', 
          imageUrl: 'assets/pic5.jpg', 
          );
final User ken = User(
          id: 5, 
          name: 'ken', 
          imageUrl: 'assets/pic6.jpg', 
          );

final User mutugi = User(
          id: 6, 
          name: 'mutugi', 
          imageUrl: 'assets/pic7.jpg', 
          );

final User japhet = User(
          id: 7, 
          name: 'japheth', 
          imageUrl: 'assets/pic8.jpg', 
          );

//Favorite Contacts
List<User> favorites = [japhet, 
mutugi, ken, 
maina, john, 
james, greg];

//Example chats on home screen
List<Message> chats = [
  Message(
    sender: john, 
    time: '5:30 PM', 
    text: 'Hey, Are you going to Town Today?', 
    isLiked: false, 
    unread: true,
    ),
  Message(
    sender: mutugi, 
    time: '4:30 PM', 
    text: 'Hey, i love  you the listener?', 
    isLiked: false, 
    unread: false,
    ),
  Message(
    sender: ken, 
    time: '2:30 PM', 
    text: 'Hey, someone kissed you over your dreams?', 
    isLiked: true, 
    unread: true,
    ),
  Message(
    sender: maina, 
    time: '1:30 PM', 
    text: 'Hey, there someone said I love you from this side ?', 
    isLiked: false, 
    unread: true,
    ),
  Message(
    sender: greg, 
    time: '10:30 PM', 
    text: 'Hey, someone sent some gifts from this side?', 
    isLiked: false, 
    unread: true,
    ), 
  Message(
    sender: japhet, 
    time: '11:30 PM', 
    text: 'Hey, Say hello to your Mum?', 
    isLiked: false, 
    unread: false,
    ),
  Message(
    sender: james, 
    time: '5:30 PM', 
    text: 'Hey, I wish you Succes in your studies?', 
    isLiked: true, 
    unread: true,
    ), 

];
