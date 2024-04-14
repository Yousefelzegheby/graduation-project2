import 'package:flutter/cupertino.dart';
import 'package:graduation/core/utiles/colors.dart';

class ChatPuple extends StatelessWidget {
  const ChatPuple({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: const BoxDecoration(
              color: AppColors.kPrimary,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.kLightColor,
            ),
          ),
        ),
      ),
    );
    ;
  }
}
