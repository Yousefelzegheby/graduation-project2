import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {@required this.textColor,
      required this.fontsize,
      required this.theText,
      @required this.onpressed,
      required this.backgroundColor});
  final String theText;
  final Color? textColor;
  final double fontsize;
  final Function()? onpressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: .23),
        child: Container(
          height: 56,
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: backgroundColor,
          ),
          child: Text(
            theText,
            style: TextStyle(
                fontSize: fontsize,
                color: textColor,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
