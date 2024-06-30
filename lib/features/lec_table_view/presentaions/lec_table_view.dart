import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/lec_table_view/data/material_model/material_model.dart';
import 'package:graduation/features/lec_table_view/presentaions/manager/cubit/material_cubit.dart';
import 'package:graduation/features/lec_table_view/presentaions/widgets/lectures_table_items.dart';
import 'package:graduation/features/lec_table_view/presentaions/widgets/title_page_lec.dart';
import 'package:url_launcher/url_launcher.dart';

class LecTableView extends StatefulWidget {
  const LecTableView({super.key});

  @override
  State<LecTableView> createState() => _LecTableViewState();
}

List<MaterialModel> material = [];

class _LecTableViewState extends State<LecTableView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MaterialCubit, MaterialCubitState>(
      listener: (context, state) {
        material = BlocProvider.of<MaterialCubit>(context).material;
      },
      builder: (context, state) {
        material = BlocProvider.of<MaterialCubit>(context).material;
        if (state is MaterialLooding) {
          return Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: AppColors.kPrimary,
                  ),
                ),
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
                leading: IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: AppColors.kPrimary,
                  ),
                ),
                title: SizedBox(
                    height: 67,
                    child: Image.asset(
                      AssetsPath.logo,
                      fit: BoxFit.cover,
                    )),
                centerTitle: true,
                toolbarHeight: 88),
            body: Column(
              children: [
                const Divider(),
                const TitlePageLec(
                  titlel: "Material :",
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => LecturestableItemWidget(
                        onTap: () async {
                          String url =
                              'https://4b8b-102-187-101-91.ngrok-free.app/Material/pdf/CS131_lec1.pdf';
                          final Uri uri = Uri.parse(url);
                          try {
                            await launchUrl(uri);
                          } catch (e) {
                            print(e.toString());
                          }
                        },
                        title: material[0].data![index].materialName!),
                    itemCount: material[0].data!.length,
                  ),
                )
              ],
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: AppColors.kPrimary,
                  ),
                ),
                title: SizedBox(
                    height: 67,
                    child: Image.asset(
                      AssetsPath.logo,
                      fit: BoxFit.cover,
                    )),
                centerTitle: true,
                toolbarHeight: 88),
            body: const Column(
              children: [Divider(), Text('this subject not has material')],
            ),
          );
        }
      },
    );
  }
}
