import 'package:flutter/cupertino.dart';
import 'package:graduation/features/chat/presentaion/widgets/chat_puple.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) => const ChatPuple(text: 'Goo'),
          separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
          itemCount: 5),
    );
  }
}
