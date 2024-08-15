import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
        ),
        title: const Text(
          'Chats',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                border: InputBorder.none,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: ChatModel.chatList.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    index == 2 ? const Text('AD') : const SizedBox.shrink(),
                itemBuilder: (context, index) {
                  var chatData = ChatModel.chatList[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(chatData.profilePic),
                    ),
                    title: Text(chatData.fullName),
                    subtitle: Row(
                      children: [
                        Text(chatData.message),
                        const SizedBox(width: 10),
                        Text(chatData.time),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
