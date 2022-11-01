import 'package:clone_ui_2/util/custome_tab_indicator.dart';
import 'package:clone_ui_2/util/list_laundry_location.dart';
import 'package:flutter/material.dart';

import '../util/circle_tab_indicator.dart';

class LaundryLocationPage extends StatefulWidget {
  const LaundryLocationPage({Key? key}) : super(key: key);

  @override
  State<LaundryLocationPage> createState() => _LaundryLocationPageState();
}

class _LaundryLocationPageState extends State<LaundryLocationPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //di sekitar
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 20),
              child: Row(
                children: const [
                  Icon(Icons.location_on_outlined),
                  Text(
                    'Disekitar Kamu',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),

            //lokasi
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff4b4e4e).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Container(
                    //   color: Colors.green,
                    //   child: Text('Gresik, peganden manyar dan sekitarnya', overflow: TextOverflow.ellipsis,),
                    // ),
                    _listItemSubtitle("Gresik, Kutisari Manyar dusun leran"),
                    const Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
              ),
            ),

            //tab bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TabBar(
                controller: _tabController,

                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                labelStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
                // indicatorSize: TabBarIndicatorSize(BorderRadius.circular(12)),
                indicatorColor: const Color(0xffF467BB),
                indicatorWeight: 4,
                indicatorPadding: const EdgeInsets.symmetric(vertical: 8),
                indicator: const CustomTabIndicator(color: Color(0xffF467BB), indicatorHeight: 7, radius: 10),
                tabs: const [
                  Tab(text: 'Terdekat',),
                  Tab(text: 'Populer',),
                  Tab(text: 'Termurah',),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: ListView(
                        children: <Widget>[
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: ListView(
                        children: <Widget>[
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: ListView(
                        children: <Widget>[
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                          ListLaundryLocation(),
                        ],
                      ),
                    ),
                  ]
              ),
            )

            //list laundry
          ],
        ),
      ),
    );
  }

  Widget _listItemSubtitle(String subtitle) {
    return Flexible(
      fit: FlexFit.loose,
      child: Text(
        subtitle,
        style: const TextStyle(
          fontWeight: FontWeight.bold
        ),
        softWrap: false,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

