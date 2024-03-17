import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/search/view/widget/custom_search_body.dart';
import 'package:graduation/features/search/view/widget/popular_search.dart';

class Searchview extends StatefulWidget {
  const Searchview({super.key});

  @override
  State<Searchview> createState() => _SearchviewState();
}

class _SearchviewState extends State<Searchview> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView(children: [
      Column(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.kLightColor,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.kGray, width: 1),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.kPrimary,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      height: 44,
                      child: TextFormField(
                        controller: searchcontroller,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: AppColors.kPrimary,
                            ),
                          ),
                          hintText: "Search",
                          hintStyle: const TextStyle(
                            color: AppColors.kGray,
                            fontSize: 16,
                            fontFamily: 'Poppins-Regular.ttf',
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: AppColors.kGray,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                CustomSearchBody(),
                SizedBox(
                  height: 10,
                ),
                popular_search(),
              ],
            ),
          )
        ],
      ),
    ])));
  }
}
