import 'package:flutter/cupertino.dart';
import 'package:graduation/core/utiles/colors.dart';

class ChatPupleResponse extends StatelessWidget {
  const ChatPupleResponse({
    this.message,
    Key? key,
  }) : super(key: key);
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          color: AppColors.kPrimary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Text(
          message ?? '',
          style: const TextStyle(
            color: AppColors.kLightColor,
          ),
        ),
      ),
    );
  }
}
