import 'package:chatapp_course/features/home/presentation/views/widgets/chat_head_item.dart';
import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 0; i < 4; i++) const ChatHeadItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
