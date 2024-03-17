import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/sign_up_view/data/enter_grade_model/enter_grade_model.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup_year/sign_up_years_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/grade_item.dart';

class ListViewSecondDegreee extends StatefulWidget {
  const ListViewSecondDegreee({super.key});

  @override
  State<ListViewSecondDegreee> createState() => _ListViewSecondDegreeeState();
}

class _ListViewSecondDegreeeState extends State<ListViewSecondDegreee> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) => GradItem(
          onchanged: (value) {
            setState(() {
              BlocProvider.of<SignUpYearsCubit>(context).enterGrade[0]
                  ['courses']['Second'][index]['grade'] = value;
            });
          },
          text: BlocProvider.of<SignUpYearsCubit>(context).enterGrade[0]
              ['courses']['Second'][index]['CourseName'],
        ),
        itemCount: BlocProvider.of<SignUpYearsCubit>(context)
            .enterGrade[0]['courses']['Second']
            .length,
      ),
    );
  }
}
