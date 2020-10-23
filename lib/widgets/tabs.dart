import 'package:flutter/material.dart';
import 'package:plantshop_ui/widgets/salespage.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;
  final texts = [
    "All",
    "Popular",
    "Outdoor",
    "Indoor",
    "Office",
    "Faculty",
  ];

  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TabBar(
          physics: BouncingScrollPhysics(),
          controller: _nestedTabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(fontSize: 16),
          isScrollable: true,
          tabs: <Widget>[
            ...List.generate(texts.length, (index) {
              return Tab(
                text: texts[index],
              );
            }).toList()
          ],
        ),
        Container(
          height: 900,
          margin: EdgeInsets.only(top: 10),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              ...List.generate(6, (index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: SalePage(),
                );
              }).toList()
            ],
          ),
        ),
      ],
    );
  }
}
