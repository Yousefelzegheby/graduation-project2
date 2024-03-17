import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/Bookmark/presentation/view/widget/custom_container.dart';
import 'package:graduation/features/Bookmark/presentation/view/widget/custom_item_bookmark.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Customitem();
        },
        itemCount: 10,
      ),
    );
  }
}
