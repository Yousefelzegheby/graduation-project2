import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/lec_table_view/data/material_model/material_model.dart';
import 'package:graduation/features/lec_table_view/presentaions/manager/cubit/material_cubit.dart';
import 'package:graduation/features/lec_table_view/presentaions/widgets/icon_appbar.dart';
import 'package:graduation/features/lec_table_view/presentaions/widgets/lectures_table_items.dart';
import 'package:graduation/features/lec_table_view/presentaions/widgets/title_page_lec.dart';
import 'package:url_launcher/url_launcher.dart';

class LecTableView extends StatefulWidget {
  const LecTableView({super.key});

  @override
  State<LecTableView> createState() => _LecTableViewState();
}

List<MaterialModel> material = [];
List<dynamic>? data;

class _LecTableViewState extends State<LecTableView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MaterialCubit, MaterialCubitState>(
      listener: (context, state) {
        data = BlocProvider.of<MaterialCubit>(context).data;
      },
      builder: (context, state) {
        data = BlocProvider.of<MaterialCubit>(context).data;
        if (state is MaterialLooding) {
          return Scaffold(
            appBar: AppBar(
                leading: const IconAppbar(),
                title: SizedBox(
                    height: 67,
                    child: Image.asset(
                      AssetsPath.logo,
                      fit: BoxFit.cover,
                    )),
                centerTitle: true,
                toolbarHeight: 88),
            body: const Column(
              children: [
                Divider(),
                CircularProgressIndicator(),
              ],
            ),
          );
        } else if (state is MaterialSuccess) {
          return Scaffold(
              appBar: AppBar(
                  leading: const IconAppbar(),
                  title: SizedBox(
                      height: 67,
                      child: Image.asset(
                        AssetsPath.logo,
                        fit: BoxFit.cover,
                      )),
                  centerTitle: true,
                  toolbarHeight: 88),
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "CourseDescription : ",
                                style: Styles.text16.copyWith(
                                    color: AppColors.kPrimary,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child:
                              Text("${data![0]['C'][0]['CourseDescription']}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Requirement :',
                                style: Styles.text16.copyWith(
                                    color: AppColors.kPrimary,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => Text(
                              "${data![0]['C'][0]['CourseRequirements'][index]}"),
                          itemCount:
                              data![0]['C'][0]['CourseRequirements'].length,
                        ),
                        const TitlePageLec(
                          titlel: "Material :",
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) =>
                              LecturestableItemWidget(
                                  onTap: () async {
                                    String url =
                                        data![0]['M'][index]['Material_link'];
                                    final Uri uri = Uri.parse(url);
                                    try {
                                      await launchUrl(uri);
                                    } catch (e) {
                                      print(e.toString());
                                    }
                                  },
                                  title: data![0]['M'][index]['Material_name']),
                          itemCount: data![0]['M'].length,
                        )
                      ],
                    ),
                  )
                ],
              ));
        } else {
          return Scaffold(
              appBar: AppBar(
                  leading: const IconAppbar(),
                  title: SizedBox(
                      height: 67,
                      child: Image.asset(
                        AssetsPath.logo,
                        fit: BoxFit.cover,
                      )),
                  centerTitle: true,
                  toolbarHeight: 88),
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "CourseDescription : ",
                                style: Styles.text16.copyWith(
                                    color: AppColors.kPrimary,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child:
                              Text("${data![0]['C'][0]['CourseDescription']}"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Requirement :',
                                style: Styles.text16.copyWith(
                                    color: AppColors.kPrimary,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => Text(
                              "${data![0]['C'][0]['CourseRequirements'][index]}"),
                          itemCount:
                              data![0]['C'][0]['CourseRequirements'].length,
                        ),
                        const TitlePageLec(
                          titlel: "Materia :",
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('this subject has no material'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ));
        }
      },
    );
  }
}
