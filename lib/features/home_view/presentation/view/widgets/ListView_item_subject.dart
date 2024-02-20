import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class ListViewItemSubject extends StatelessWidget {
  const ListViewItemSubject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: AspectRatio(
        aspectRatio: 1.9,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.kPrimary,
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Subject',
                    style: Styles.textstyle18.copyWith(
                      color: AppColors.kLightColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 62,
                      height: 29,
                      decoration: BoxDecoration(
                          color: AppColors.kLightColor,
                          borderRadius: BorderRadius.circular(555)),
                      child: Center(
                        child: Text(
                          'Visit',
                          style:
                              Styles.text14.copyWith(color: AppColors.kPrimary),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .15,
              ),
              Image.asset(
                'assets/images/book_4644023.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
