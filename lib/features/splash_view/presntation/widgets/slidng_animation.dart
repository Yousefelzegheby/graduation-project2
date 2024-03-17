import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/styles.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        //عشان اعمل ريبيلد للانيميشن بس
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'For Students',
              style:
                  Styles.textstyle20.copyWith(color: const Color(0xffEB882D)),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
