import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/Bookmark/presentation/view/widget/custom_container.dart';

class custom_bookmark extends StatefulWidget {
  const custom_bookmark({super.key});

  @override
  State<custom_bookmark> createState() => _custom_bookmarkState();
}

class _custom_bookmarkState extends State<custom_bookmark> {
  bool isbookmark = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        alignment: Alignment.bottomRight,
        onPressed: () {
          setState(() {
            isbookmark = !isbookmark;
            _showDialog(context);
          });
        },
        icon: isbookmark
            ? const Icon(Icons.bookmark)
            : const Icon(Icons.bookmark_border_outlined));
  }
}

Future<void> _showDialog(BuildContext context) {
//  bool isbookmark = true;
  return showDialog(
      context: context,
      builder: ((context) => AlertDialog(
            backgroundColor: AppColors.kLightColor,
            title: const Text(
              'Remove from Bookmark?',
              style: TextStyle(
                  color: AppColors.kPrimary,
                  fontFamily: 'Poppins-Bold.ttf',
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            content: const CustomContainer(),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false), // Cancel button
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: AppColors.kLightColor,
                    border: Border.all(color: AppColors.kPrimary, width: 2),
                  ),
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 16, bottom: 16),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: AppColors.kPrimary),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, false), // Yes button
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: AppColors.kPrimary,
                    border: Border.all(color: AppColors.kPrimary, width: 2),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Yes, Remove',
                    style: TextStyle(color: AppColors.kLightColor),
                  ),
                ),
              ),
            ],
          )));
}
