import 'package:flutter/material.dart';
import 'package:graduation/features/massege&notification/presentation/views/widget/notifications.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Divider(),
          Expanded(child: Notificationbody()),
        ],
      ),
    );
  }
}
