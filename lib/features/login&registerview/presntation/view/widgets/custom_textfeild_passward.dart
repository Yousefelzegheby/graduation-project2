

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';

class CustomTextFeildPassward extends StatefulWidget {
  const CustomTextFeildPassward({
    super.key,
  });

  @override
  State<CustomTextFeildPassward> createState() =>
      _CustomTextFeildPasswardState();
}

class _CustomTextFeildPasswardState extends State<CustomTextFeildPassward> {
  bool obscured = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFeild(
      
        onchanged: (data)async {
          BlocProvider.of<LogInCubit>(context).password = data;
        },
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
