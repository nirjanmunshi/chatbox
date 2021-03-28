import 'package:chat_box/model/chat.dart';
import 'package:chat_box/view/chat/chat_card.dart';
import 'package:chat_box/view/home/message/message_screen.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
