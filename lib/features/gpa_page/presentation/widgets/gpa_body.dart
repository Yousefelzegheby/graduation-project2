import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/gpa_page/presentation/msnsger/cubit/gpa_cubit.dart';

class GpaBody extends StatefulWidget {
  const GpaBody({super.key});

  @override
  State<GpaBody> createState() => _GpaBodyState();
}

List<dynamic> data = [];

class _GpaBodyState extends State<GpaBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GpaCubit, GpaState>(
      listener: (context, state) {
        data = BlocProvider.of<GpaCubit>(context).data;
      },
      builder: (context, state) {
        data = BlocProvider.of<GpaCubit>(context).data;
        if (state is GpaLooding) {
          return const Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            ),
          );
        } else if (state is GpaFailuer) {
          return const Column(
            children: [
              Divider(),
              Text('There is no Gpa'),
            ],
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'GPA:  ${data[0]['GPA']}',
                  style: Styles.textstyle20.copyWith(
                      color: AppColors.kPrimary, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'TotalCreditHours:  ${data[0]['totalCreditHours']}',
                  style: Styles.textstyle20.copyWith(
                      color: AppColors.kPrimary, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'TotalGradePoints:  ${data[0]['totalGradePoints']}',
                  style: Styles.textstyle20.copyWith(
                      color: AppColors.kPrimary, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
