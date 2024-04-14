import 'package:flutter/material.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/Suggest_view_body.dart';

class SuggestView extends StatelessWidget {
  const SuggestView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuggestViewBody(),
    );
  }
}
