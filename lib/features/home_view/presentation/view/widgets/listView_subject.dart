import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/features/chat/manager/get/chat_cubit.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/ListView_item_subject.dart';

class ListViewSubject extends StatelessWidget {
  const ListViewSubject({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
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
            text: 'Lecture tables',
            onTap: () {
              GoRouter.of(context).push('/lectableview');
            },
            image: 'assets/images/calendar_747479.png',
          ),
          ListViewItemSubject(
            text: 'Academic Resuls',
            onTap: () {},
            image: 'assets/images/checklist_3385148.png',
          ),
          ListViewItemSubject(
            text: 'Materials',
            onTap: () {
              GoRouter.of(context).push("/materialview");
            },
            image: 'assets/images/layer_7157590.png',
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
  }
}
