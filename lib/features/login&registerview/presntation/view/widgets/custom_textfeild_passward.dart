import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';

class CustomTextFeildPassward extends StatefulWidget {
  final TextEditingController? controller;
  final dynamic Function(String)? onchanged;
  const CustomTextFeildPassward({super.key, this.controller, this.onchanged});

  @override
  State<CustomTextFeildPassward> createState() =>
      _CustomTextFeildPasswardState();
}

class _CustomTextFeildPasswardState extends State<CustomTextFeildPassward> {
  bool obscured = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFeild(
        controller: widget.controller,
        onchanged: widget.onchanged,
        label: const Text('Passward(Required)'),
        obscured: obscured,
        sufex: Icons.remove_red_eye,
        sufexOnpreasd: () {
          setState(() {
            obscured = !obscured;
          });
        },
        color: AppColors.kGray,
        hintText: 'Passward(Required)');
  }
}
