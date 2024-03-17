import 'package:flutter/material.dart';

class custom_menu_bottom extends StatelessWidget {
  const custom_menu_bottom({
    super.key,
    required this.onTap,
    required this.color,
    required this.text,
    required this.textColor,
    required this.width,
  });
  final String text;
  final Color color;
  final Color textColor;
  final double width;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
            alignment: Alignment.center,
            width: width,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Text(
              text,
              style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontFamily: 'Poppins-Regular.ttf',
                  fontWeight: FontWeight.w400),
            )),
      ),
    );
  }
}
