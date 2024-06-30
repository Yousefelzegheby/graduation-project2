import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/chat/manager/get/chat_cubit.dart';
import 'package:graduation/features/chat/presentaion/widgets/chat_puple.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic>? data;

    return BlocConsumer<ChatCubit, ChatState>(
      listener: (context, state) {
        if (state is ChatSuccessState) {
          data = state.data;
        }
      },
      builder: (context, state) {
        if (state is ChatLoodingState) {
          return const Center(child: Text('Wait..'));
        } else if (state is ChatSuccessState) {
          data = state.data;

          return Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ChatPuple(
                  text: data![0]['data'][index]['msg'] ?? 'thank you',
                  bottomLeft: data![0]['data'][index]['Sender'] == 1 ? 20 : 0,
                  bottomRight: data![0]['data'][index]['Sender'] == 1 ? 0 : 20,
                  alignment: data![0]['data'][index]['Sender'] == 1
                      ? Alignment.bottomRight
                      : Alignment.centerLeft,
                  color: data![0]['data'][index]['Sender'] == 1
                      ? AppColors.kPrimary
                      : AppColors.blueWhite,
                  textColor: data![0]['data'][index]['Sender'] == 1
                      ? AppColors.kLightColor
                      : AppColors.kDarkColor,
                  onTap: () {
                    BlocProvider.of<ChatCubit>(context).chatGet(
                        body: {'question': data![0]['data'][index]['msg']});
                  },
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: data![0]['data'].length,
            ),
          );
        } else {
          return const Center(child: Text('Wait..'));
        }
      },
    );
  }
}
