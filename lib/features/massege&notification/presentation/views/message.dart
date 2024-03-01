import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/massege&notification/presentation/views/widget/message.dart';
import 'package:graduation/features/massege&notification/presentation/views/widget/no%20message.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MessageBody(),
    );
  }
}
