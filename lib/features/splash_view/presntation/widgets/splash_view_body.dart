import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/splash_view/presntation/widgets/slidng_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    // slidingAnimation.addListener(() {
    //دي كنت هحتاجها لو مكنتش استخدمت انيميتد بيلدر اللي تحت
    //   setState(() {});
    // });
    navigatToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsPath.logo,
        ),
        SlidingAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigatToHomeView() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      // Get.to(()=>
      //   const HomeView(),
      //   duration: ktransitionDuration,
      //   transition: Transition.fadeIn,
      // );

      GoRouter.of(context).push('/GetStarted');
    });
  }
}
