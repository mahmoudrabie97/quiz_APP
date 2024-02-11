import 'package:flutter/material.dart';
import 'package:quizapp/utilites/appcolors.dart';
import 'package:quizapp/utilites/styles.dart';
import 'package:flutter/scheduler.dart' show TickerProviderStateMixin;

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
            // labelPadding: EdgeInsets.only(right: 0, left: 0),
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
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
        ),
      ],
    );
  }
}
