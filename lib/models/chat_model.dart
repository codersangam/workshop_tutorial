class ChatModel {
  final String fullName;
  final String profilePic;
  final String message;
  final String time;
  final String storiesPic;

  ChatModel(
      {required this.fullName,
      required this.profilePic,
      required this.message,
      required this.time,
      required this.storiesPic});

  static List<ChatModel> chatList = [
    ChatModel(
      fullName: 'Sangam',
      profilePic: 'https://picsum.photos/id/237/200/300',
      message: 'Hello',
      time: '1s ago',
      storiesPic: 'https://picsum.photos/id/237/1000',
    ),
    ChatModel(
      fullName: 'IT Club',
      profilePic: 'https://picsum.photos/id/23/200/300',
      message: 'Ok',
      time: '1 day ago',
      storiesPic: 'https://picsum.photos/id/67/1000',
    ),
    ChatModel(
      fullName: 'Purnima',
      profilePic: 'https://picsum.photos/id/65/200/300',
      message: 'What ??',
      time: '10m ago',
      storiesPic: 'https://picsum.photos/id/32/1000',
    ),
    ChatModel(
      fullName: 'Shweta',
      profilePic: 'https://picsum.photos/id/68/200/300',
      message: 'What ??',
      time: '10m ago',
      storiesPic: 'https://picsum.photos/id/44/1000',
    ),
    ChatModel(
      fullName: 'Sundar',
      profilePic: 'https://picsum.photos/id/61/200/300',
      message: 'What ??',
      time: '10m ago',
      storiesPic: 'https://picsum.photos/id/84/1000',
    ),
  ];
}
