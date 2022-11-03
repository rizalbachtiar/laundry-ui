import 'package:clone_ui_2/pages/detail_laundry_page.dart';
import 'package:clone_ui_2/pages/home_page.dart';
import 'package:clone_ui_2/pages/laundry_location_page.dart';
import 'package:clone_ui_2/pages/laundry_page.dart';
import 'package:clone_ui_2/util/circle_tab_indicator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            HomePage(),
            LaundryPage(),
            LaundryLocationPage(),
            DetailLaundryPage(),
          ],
        ),
        extendBody: true,

        bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff0E1446).withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50.0),),
              child: Container(
                color: const Color(0xff0E1446),
                child: TabBar(
                  labelColor: const Color(0xffFFD131),
                  unselectedLabelColor: Colors.grey[300],
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  // indicator: UnderlineTabIndicator(
                  //   borderSide: BorderSide(color: Color(0xffFFD131), width: 2),
                  //   insets: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 40.0),
                  //
                  // ),
                  indicator: CircleTabIndicator(color: const Color(0xffFFD131), radius: 4),
                  indicatorPadding: const EdgeInsets.all(-3),
                  tabs: const <Widget>[
                    Tab(
                      icon: Icon(Icons.home_outlined, size: 25,),
                    ),
                    Tab(
                      icon: Icon(Icons.confirmation_num_outlined, size: 25,),
                    ),
                    Tab(
                      icon: Icon(Icons.location_on_outlined, size: 25,),
                    ),
                    Tab(
                      icon: Icon(Icons.timer_sharp, size: 25,),
                    ),
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

