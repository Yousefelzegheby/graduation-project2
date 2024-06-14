import 'package:flutter/cupertino.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class ChatPuple extends StatelessWidget {
  const ChatPuple({
    super.key,
    required this.text,
    this.onTap,
    required this.bottomLeft,
    required this.bottomRight,
    required this.alignment,
    required this.color,
    required this.textColor,
  });
  final String text;
  final void Function()? onTap;
  final double bottomLeft;
  final double bottomRight;
  final AlignmentGeometry alignment;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: alignment,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              topRight: const Radius.circular(20),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight),
            ),
          ),
          child: Text(
            text,
            style: Styles.textstyle17
                .copyWith(color: textColor, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
    ;
  }
}
