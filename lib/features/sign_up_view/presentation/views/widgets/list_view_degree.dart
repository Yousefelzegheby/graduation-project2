import 'package:flutter/cupertino.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/grade_item.dart';

class ListViewDegreeYear extends StatelessWidget {
  const ListViewDegreeYear({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) => const GradItem(),
        itemCount: 7,
      ),
    );
  }
}
