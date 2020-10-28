import 'package:hello_world/models/user_model.dart';

class Message {
  final User sender;
  final String time; // would be DateTime/Firebase Timestamp in prod. apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// You - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/han.jpg',
);

// Users
final User hanette = User(
  id: 1,
  name: 'Hanette',
  imageUrl: 'assets/images/han.jpg',
);

final User moggy = User(
  id: 2,
  name: 'Moggy',
  imageUrl: 'assets/images/moggy.jpg',
);

final User mom = User(
  id: 3,
  name: 'Mom',
  imageUrl: 'assets/images/mom.jpg',
);

final User dad = User(
  id: 4,
  name: 'Dad',
  imageUrl: 'assets/images/dad.jpg',
);

final User tim = User(
  id: 5,
  name: 'Timothy',
  imageUrl: 'assets/images/tim.jpg',
);

final User kim = User(
  id: 6,
  name: 'Kimberly',
  imageUrl: 'assets/images/kim.jpg',
);

final User julia = User(
  id: 7,
  name: 'Julia',
  imageUrl: 'assets/images/julia.jpg',
);

// Favorite Contacts
List<User> favorites = [moggy, mom, dad, tim, kim];

// Examples chats on Home Screen
List<Message> chats = [
  Message(
    sender: mom,
    time: '10:11 PM',
    text: 'Did you eat yet?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: moggy,
    time: '3:17 PM',
    text: 'Hey! What are you up to today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: dad,
    time: '3:09 PM',
    text: 'How\'s it going? I love you',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: tim,
    time: 'Yesterday',
    text: 'I want boba',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: kim,
    time: 'Yesterday',
    text: 'Lol! Yeah that\'s fine',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: julia,
    time: 'Yesterday',
    text: 'Hi, i miss you',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: julia,
    time: 'Yesterday',
    text: 'Hi, i miss you',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: julia,
    time: 'Yesterday',
    text: 'Hi, i miss you',
    isLiked: false,
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: moggy,
    time: '3:17 PM',
    text: 'Hey! What are you up to today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: moggy,
    time: '10:13 PM',
    text: 'Yeah, let\'s do it!',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '10:08 PM',
    text: 'Sameeee. Wanna watch a movie rn?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: moggy,
    time: '10:07 PM',
    text: 'I just finished eating and I feel so schleppt',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '10:06 PM',
    text: 'Hihi, what are you up to right now?',
    isLiked: false,
    unread: false,
  ),
];
