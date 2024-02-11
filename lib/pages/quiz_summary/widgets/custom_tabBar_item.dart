import 'package:flutter/material.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_column_quize_summary.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_container_think.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:flutter/scheduler.dart' show TickerProviderStateMixin;
import 'package:quizapp/utilites/widgets/customtext.dart';

class CustomTabBarItem extends StatelessWidget {
  const CustomTabBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: AppColor.whiteColor,
        ),
        child: Column(
          children: [
            CustomRowWords(),
          ],
        ),
      ),
    );
  }
}

class CustomRowWords extends StatefulWidget {
  const CustomRowWords({Key? key}) : super(key: key);

  @override
  _CustomRowWordsState createState() => _CustomRowWordsState();
}

class _CustomRowWordsState extends State<CustomRowWords>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          // alignment: Alignment.centerLeft,
          child: TabBar(
            controller: tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.only(right: 20, left: 20),
            //isScrollable: true,
            tabs: [
              Tab(text: 'Summary'),
              Tab(text: 'Friends'),
              Tab(text: 'Standings'),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 300,
          child: TabBarView(
            controller: tabController,
            children: [
              ListView.builder(
                itemBuilder: (_, index) {
                  return const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: '1 st Try'),
                        CustomColumnQuizeSummary(
                          image: AssetsData.question,
                          text: 'Total Que',
                        ),
                        CustomContainerThink(),
                        CustomColumnQuizeSummary(
                          image: AssetsData.accept,
                          text: 'Correct',
                        ),
                        CustomContainerThink(),
                        CustomColumnQuizeSummary(
                          image: AssetsData.cansel1,
                          text: ' Wrong',
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 3,
              ),
              Text('2'),
              Text('3'),
            ],
          ),
        ),
      ],
    );
  }
}
