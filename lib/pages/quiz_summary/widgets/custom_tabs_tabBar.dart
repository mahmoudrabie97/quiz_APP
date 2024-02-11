import 'package:flutter/material.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_column_quize_summary.dart';
import 'package:quizapp/pages/quiz_summary/widgets/custom_container_think.dart';
import 'package:quizapp/pages/quiz_summary/widgets/estandinglistitem.dart';
import 'package:quizapp/pages/quiz_summary/widgets/friendslistitems.dart';
import 'package:quizapp/pages/quiz_summary/widgets/summary_list_items.dart';
import 'package:quizapp/utilites/assets.dart';
import 'package:quizapp/utilites/widgets/customtext.dart';

class CustomTabsOFtabBar extends StatefulWidget {
  const CustomTabsOFtabBar({Key? key}) : super(key: key);

  @override
  _CustomTabsOFtabBarState createState() => _CustomTabsOFtabBarState();
}

class _CustomTabsOFtabBarState extends State<CustomTabsOFtabBar>
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
            labelPadding: const EdgeInsets.only(right: 20, left: 20),
            //isScrollable: true,
            tabs: [
              const Tab(text: 'Summary'),
              const Tab(text: 'Friends'),
              const Tab(text: 'Standings'),
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
                  return const EstandingsListItem();
                },
                itemCount: 3,
              ),
              ListView.separated(
                itemBuilder: (_, index) {
                  return const FriendsListItem();
                },
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 9,
                  );
                },
              ),
              ListView.separated(
                itemBuilder: (_, index) {
                  return const SummaryListItems();
                },
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 9,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
