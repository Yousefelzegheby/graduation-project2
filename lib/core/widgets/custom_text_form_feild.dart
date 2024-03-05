import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';

class CustomTextFormFeild extends StatelessWidget {
  final Color color;
  final String? hintText;
  final Function(String)? onchanged;
  final bool? obscured;
  final IconData? sufex;
  final void Function()? sufexOnpreasd;
  final Text? label;
  final void Function(String?)? onsaved;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const CustomTextFormFeild({
    Key? key,
    this.keyboardType,
    this.onsaved,
    this.sufexOnpreasd,
    this.label,
    this.sufex,
    this.onchanged,
    required this.color,
    this.hintText,
    this.obscured = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscured!,
      keyboardType: keyboardType,
      validator: (data) {
        if (data!.isEmpty) {
          return 'not allawed';
        }
      },
      onSaved: onsaved,
      controller: controller,
      onChanged: onchanged,
      decoration: InputDecoration(
          border: borderStyle(),
          enabledBorder: borderStyle(),
          label: label,
          hintText: hintText,
          suffixIcon: GestureDetector(onTap: sufexOnpreasd, child: Icon(sufex)),
          hintStyle: TextStyle(color: color)),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
        borderSide: BorderSide(
      color: color,
    ));
  }
}
