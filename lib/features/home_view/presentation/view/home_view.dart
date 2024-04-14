import 'package:flutter/material.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/homeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
