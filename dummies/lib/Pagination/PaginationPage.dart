import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retplan/pages/SignUp_In/SignUp.dart';
import 'package:retplan/pages/Utilites/colors.dart';
import 'package:retplan/pages/Utilites/dimensions.dart';

import 'AppBar.dart';
import 'BottomBar.dart';
import 'GlassBox.dart';
import 'TabBar.dart';
import 'Tabs/FreeTab.dart';
import 'Tabs/PremiumTab.dart';

class PaginationPage extends StatefulWidget {
  const PaginationPage({super.key});

  @override
  State<PaginationPage> createState() => _PaginationPageState();
}

class _PaginationPageState extends State<PaginationPage> {
  void _searchButtonTapped() {}

  List tabOptions = const [
    ["Free", FreeTab()],
    ["Premium", PremiumTab()]
  ];

  // bottom bar navigation
  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabOptions.length,
        child: Scaffold(
          backgroundColor: ColorsDesign.mainColor,
          extendBody: true,
          bottomNavigationBar: GlassBox(
            child: MyBottomBar(
              index: _currentBottonIndex,
              onTap: _handleIndexChanged,
            ),
          ),
          body: ListView(children: [
            MyAppBar(
              title: "hi",
              onTap: _searchButtonTapped,
            ),
            SizedBox(
              height: 600,
              child: MyTabBar(tabOptions: tabOptions),
            ),
          ]),
        ));
  }
}
