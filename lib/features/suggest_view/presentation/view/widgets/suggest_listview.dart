import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/snakeBar.dart';
import 'package:graduation/features/suggest_view/presentation/manager/manual/manual_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/manager/suggest/suggest_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/Listview_item.dart';

class SuggestListview extends StatefulWidget {
  const SuggestListview({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  State<SuggestListview> createState() => _SuggestListviewState();
}

class _SuggestListviewState extends State<SuggestListview> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> data;

    double width = 36;
    return BlocConsumer<SuggestCubit, SuggestState>(
      listener: (context, state) {
        data = BlocProvider.of<SuggestCubit>(context).data;
      },
      builder: (context, state) {
        if (state is SuggestLodding) {
          return const CircularProgressIndicator();
        } else if (state is SuggestFailuer) {
          showSnakbar(context, 'there is an error, please try again');
        }
        data = BlocProvider.of<SuggestCubit>(context).data;
        return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ListViewItem(
                  onPressed: () {
                    if (BlocProvider.of<ManualCubit>(context)
                        .course
                        .contains(data[0]['data'][index]['CourseName'])) {
                      BlocProvider.of<ManualCubit>(context)
                          .course
                          .remove(data[0]['data'][index]['CourseName']);
                      print(BlocProvider.of<ManualCubit>(context).course);
                    } else {
                      BlocProvider.of<ManualCubit>(context)
                          .course
                          .add(data[0]['data'][index]['CourseName']);

                      setState(() {
                        data[0]['data'].removeAt(index);
                      });
                      print(BlocProvider.of<ManualCubit>(context).course);
                    }
                  },
                  width: width,
                  drName: data[0]['data'][index]['Doctor_name'].toString(),
                  courseName: data[0]['data'][index]['CourseName'],
                  numbreHour: data[0]['data'][index]['Credit_hours'].toString(),
                  numberStudent:
                      data[0]['data'][index]['Number_of_students'].toString(),
                  image: data[0]['data'][index]['Course-image'],
                  index: index,
                ),
            separatorBuilder: (context, index) => const SizedBox(),
            itemCount: data[0]['data'].length);
      },
    );
  }
}
