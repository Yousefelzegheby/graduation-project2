import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/styles.dart';

class TextFeildProfile extends StatelessWidget {
  const TextFeildProfile({
    super.key,
    required this.hint,
    this.wideth,
    this.imageicon,
  });
  final String hint;
  final double? wideth;
  final Widget? imageicon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: wideth ?? double.infinity,
      child: TextField(
        // cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: Styles.text18Hint,
            suffixIcon: imageicon,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    // color: Colors.red
                    color: Color(0xffB8B8B8)),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    // color: Colors.red
                    color: Color(0xffB8B8B8)),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)))),
      ),
    );
  }
}
