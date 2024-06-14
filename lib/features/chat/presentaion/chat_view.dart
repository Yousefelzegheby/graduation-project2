import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation/features/chat/presentaion/widgets/chat_appbar.dart';
import 'package:graduation/features/chat/presentaion/widgets/chat_body.dart';

class ChatBoot extends StatelessWidget {
  const ChatBoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        ChatAppbar(),
        ChatBody(),
      ],
    ));
  }
}
