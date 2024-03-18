import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup/sign_up_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/sign_up_body.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SignUpBody());
  }
}
