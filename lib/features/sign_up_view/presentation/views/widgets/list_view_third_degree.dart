import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/sign_up_view/data/enter_grade_model/enter_grade_model.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup_year/sign_up_years_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/grade_item.dart';

class ListViewThirdDegree extends StatefulWidget {
  const ListViewThirdDegree({super.key});

  @override
  State<ListViewThirdDegree> createState() => _ListViewThirdDegreeState();
}

class _ListViewThirdDegreeState extends State<ListViewThirdDegree> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) => GradItem(
          onchanged: (value) {
            setState(() {
              BlocProvider.of<SignUpYearsCubit>(context).enterGrade[0]
                  ['courses']['third'][index]['grade'] = value;
            });
          },
          text: BlocProvider.of<SignUpYearsCubit>(context).enterGrade[0]
              ['courses']['third'][index]['CourseName'],
        ),
        itemCount: BlocProvider.of<SignUpYearsCubit>(context)
            .enterGrade[0]['courses']['third']
            .length,
      ),
    );
  }
}
