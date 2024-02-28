import 'package:flutter/cupertino.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/button_signup_itemRow.dart';

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 56,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          color: AppColors.kPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
        ),
        child: const ButtonSignUpItemRow(),
      ),
    );
  }
}
