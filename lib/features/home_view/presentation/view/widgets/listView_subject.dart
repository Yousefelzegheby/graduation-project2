import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/features/chat/manager/get/chat_cubit.dart';
import 'package:graduation/features/gpa_page/presentation/msnsger/cubit/gpa_cubit.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/ListView_item_subject.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';

class ListViewSubject extends StatefulWidget {
  const ListViewSubject({
    super.key,
  });

  @override
  State<ListViewSubject> createState() => _ListViewSubjectState();
}

List<LoginModel> homeInfo = [];

class _ListViewSubjectState extends State<ListViewSubject> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LoginCubitState>(
      listener: (context, state) {
        homeInfo = BlocProvider.of<LogInCubit>(context).allproduct;
      },
      builder: (context, state) {
        homeInfo = BlocProvider.of<LogInCubit>(context).allproduct;

        return SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ListViewItemSubject(
                text: 'Subject',
                onTap: () {
                  GoRouter.of(context).push('/visitSubjects');
                },
                image: 'assets/images/book_4644023.png',
              ),
              ListViewItemSubject(
                text: '  GPA',
                onTap: () {
                  BlocProvider.of<GpaCubit>(context)
                      .gpa(token: homeInfo[0].accessToken!);
                  GoRouter.of(context).push('/gpa');
                },
                image: 'assets/images/chat_8156135.png',
              ),
              ListViewItemSubject(
                text: 'Support&Help',
                onTap: () {
                  BlocProvider.of<ChatCubit>(context).chatGet();
                  GoRouter.of(context).push("/chatview");
                },
                image: 'assets/images/chat_8156135.png',
              ),
            ],
          ),
        );
      },
    );
  }
}
