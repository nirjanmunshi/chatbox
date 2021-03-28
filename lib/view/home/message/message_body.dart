import 'package:chat_box/model/chat_message.dart';
import 'package:chat_box/util/style/constants.dart';
import 'package:chat_box/view/home/chat/chat_input_field.dart';
import 'package:chat_box/view/home/chat/message.dart';
import 'package:flutter/material.dart';

class MessageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
