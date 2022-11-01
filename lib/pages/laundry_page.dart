import 'package:clone_ui_2/util/status_laundry.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class LaundryPage extends StatefulWidget {
  const LaundryPage({ Key? key }) : super(key: key);

  @override
  State<LaundryPage> createState() => _LaundryPageState();
}

class _LaundryPageState extends State<LaundryPage> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  // int? _index;
  // VoidCallback? onChanged;
  int? _currentSelection = 0;

  // @override
  // void initState() {
  //   _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    // onChanged = () {
    //   setState(() {
    //     _index = _tabController?.index;
    //   });
    // };
    // _tabController?.addListener(onChanged!);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController?.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: const Text(
                'Cucian kamu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 30,),

            //tab bar
            Container(
              child: MaterialSegmentedControl(

                children: _children,
                selectionIndex: _currentSelection,
                borderColor: Color(0xffF467BB),
                selectedColor: Color(0xffF467BB),
                unselectedColor: Colors.white,
                borderRadius: 32,
                // disabledChildren: [
                //   2
                // ],
                onSegmentChosen: (int index) {
                  setState(() {
                    _currentSelection = index;
                  });
                },
              ),
            ),

          SizedBox(height: 10,),

            _currentSelection == 0
            ? Expanded(
              child: ListView(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                  children: const [
                    StatusLaundry(
                        statusColor: Color(0xffFFD131),
                        statusIcon: Icon(Icons.timer_sharp, size: 20,),
                        durasi: '1 Hari lagi',
                        tgl: '14 Mar 2022',
                        judul: 'Dry Cleaning',
                        jumlahlaundry: '3 Items',
                        tipeLaundy: 'Regular',
                        tipeColor: Color(0xffe0e0e0),
                        tipeIcon: Icon(Icons.access_time_sharp)
                    ),
                    StatusLaundry(
                        statusColor: Color(0xffFFD131),
                        statusIcon: Icon(Icons.timer_sharp, size: 20,),
                        durasi: '3 Hari lagi',
                        tgl: '16 Mar 2022',
                        judul: 'Sepatu',
                        jumlahlaundry: '1 Items',
                        tipeLaundy: 'Regular',
                        tipeColor: Color(0xffe0e0e0),
                        tipeIcon: Icon(Icons.access_time_sharp)
                    ),
                    StatusLaundry(
                        statusColor: Color(0xffFFD131),
                        statusIcon: Icon(Icons.timer_sharp, size: 20,),
                        durasi: '1 Hari lagi',
                        tgl: '14 Mar 2022',
                        judul: 'Cuci Setrika',
                        jumlahlaundry: '3 Kg',
                        tipeLaundy: 'Express',
                        tipeColor: Color(0xffFFF6D7),
                        tipeIcon: Icon(Icons.bolt)
                    ),
                    StatusLaundry(
                        statusColor: Color(0xffFFD131),
                        statusIcon: Icon(Icons.timer_sharp, size: 20,),
                        durasi: '1 Hari lagi',
                        tgl: '14 Mar 2022',
                        judul: 'Boneka',
                        jumlahlaundry: '3 Items',
                        tipeLaundy: 'Express',
                        tipeColor: Color(0xffe0e0e0),
                        tipeIcon: Icon(Icons.access_time_sharp)
                    )
                  ],
                ),
            )
            : Expanded(
              child: ListView(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              children: const [
                StatusLaundry(
                    statusColor: Color(0xff57ee33),
                    statusIcon: Icon(Icons.check_circle_outline, size: 20,),
                    durasi: 'Selesai',
                    tgl: '14 Mar 2022',
                    judul: 'Cuci Setrika',
                    jumlahlaundry: '3 Kg',
                    tipeLaundy: 'Express',
                    tipeColor: Color(0xffFFF6D7),
                    tipeIcon: Icon(Icons.bolt)
                ),
                StatusLaundry(
                    statusColor: Color(0xff57ee33),
                    statusIcon: Icon(Icons.timer_sharp, size: 20,),
                    durasi: 'Selesai',
                    tgl: '14 Mar 2022',
                    judul: 'Boneka',
                    jumlahlaundry: '3 Items',
                    tipeLaundy: 'Express',
                    tipeColor: Color(0xffe0e0e0),
                    tipeIcon: Icon(Icons.access_time_sharp)
                )
              ],
          ),
            ),


            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 25),
            //   height: 50,
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: const Color(0xffF467BB),
            //       width: 1
            //     ),
            //     color: Colors.grey[100],
            //     borderRadius: BorderRadius.circular(
            //       25.0,
            //     ),
            //   ),
            //   child: TabBar(
            //     controller: _tabController,
            //     // padding: EdgeInsets.symmetric(vertical: 2),
            //     // give the indicator a decoration (color and border radius)
            //     indicator: _tabController?.index == 0
            //       ? const BoxDecoration(
            //       borderRadius: BorderRadius.horizontal(
            //         left: Radius.circular(25)
            //       ),
            //       color: Color(0xffF467BB),
            //     )
            //     : const BoxDecoration(
            //       borderRadius: BorderRadius.horizontal(
            //           right: Radius.circular(25)
            //       ),
            //       color: Color(0xffF467BB),
            //     ),
            //     labelColor: Colors.white,
            //     unselectedLabelColor: const Color(0xffF467BB),
            //     labelStyle: const TextStyle(
            //       fontSize: 16,
            //       fontWeight: FontWeight.bold
            //     ),
            //     tabs: const [
            //       // first tab [you can add an icon using the icon property]
            //       Tab(
            //         text: 'Dalam Proses',
            //       ),
            //
            //       // second tab [you can add an icon using the icon property]
            //       Tab(
            //         text: 'Selesai (2)',
            //       ),
            //     ],
            //   ),
            // ),

            // const SizedBox(height: 15,),
            // Expanded(
            //   child: TabBarView(
            //     controller: _tabController,
            //     children: [
            //       // first tab bar view widget
            //       ListView(
            //         padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            //         children: const [
            //           StatusLaundry(
            //               statusColor: Color(0xffFFD131),
            //               statusIcon: Icon(Icons.timer_sharp, size: 20,),
            //               durasi: '1 Hari lagi',
            //               tgl: '14 Mar 2022',
            //               judul: 'Dry Cleaning',
            //               jumlahlaundry: '3 Items',
            //               tipeLaundy: 'Regular',
            //               tipeColor: Color(0xffe0e0e0),
            //               tipeIcon: Icon(Icons.access_time_sharp)
            //           ),
            //           StatusLaundry(
            //               statusColor: Color(0xffFFD131),
            //               statusIcon: Icon(Icons.timer_sharp, size: 20,),
            //               durasi: '3 Hari lagi',
            //               tgl: '16 Mar 2022',
            //               judul: 'Sepatu',
            //               jumlahlaundry: '1 Items',
            //               tipeLaundy: 'Regular',
            //               tipeColor: Color(0xffe0e0e0),
            //               tipeIcon: Icon(Icons.access_time_sharp)
            //           ),
            //           StatusLaundry(
            //               statusColor: Color(0xffFFD131),
            //               statusIcon: Icon(Icons.timer_sharp, size: 20,),
            //               durasi: '1 Hari lagi',
            //               tgl: '14 Mar 2022',
            //               judul: 'Cuci Setrika',
            //               jumlahlaundry: '3 Kg',
            //               tipeLaundy: 'Express',
            //               tipeColor: Color(0xffFFF6D7),
            //               tipeIcon: Icon(Icons.bolt)
            //           ),
            //           StatusLaundry(
            //               statusColor: Color(0xffFFD131),
            //               statusIcon: Icon(Icons.timer_sharp, size: 20,),
            //               durasi: '1 Hari lagi',
            //               tgl: '14 Mar 2022',
            //               judul: 'Boneka',
            //               jumlahlaundry: '3 Items',
            //               tipeLaundy: 'Express',
            //               tipeColor: Color(0xffe0e0e0),
            //               tipeIcon: Icon(Icons.access_time_sharp)
            //           )
            //         ],
            //       ),
            //
            //       // second tab bar view widget
            //       ListView(
            //         padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            //         children: const [
            //           StatusLaundry(
            //               statusColor: Color(0xff57ee33),
            //               statusIcon: Icon(Icons.check_circle_outline, size: 20,),
            //               durasi: 'Selesai',
            //               tgl: '14 Mar 2022',
            //               judul: 'Cuci Setrika',
            //               jumlahlaundry: '3 Kg',
            //               tipeLaundy: 'Express',
            //               tipeColor: Color(0xffFFF6D7),
            //               tipeIcon: Icon(Icons.bolt)
            //           ),
            //           StatusLaundry(
            //               statusColor: Color(0xff57ee33),
            //               statusIcon: Icon(Icons.timer_sharp, size: 20,),
            //               durasi: 'Selesai',
            //               tgl: '14 Mar 2022',
            //               judul: 'Boneka',
            //               jumlahlaundry: '3 Items',
            //               tipeLaundy: 'Express',
            //               tipeColor: Color(0xffe0e0e0),
            //               tipeIcon: Icon(Icons.access_time_sharp)
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

          ],
        ),
      )
    );
  }

  Map<int, Widget> _children = {
    0: Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      child: Text(
        'Dalam Proses',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
    ),
    1: Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      child: Text(
        'Selesai (2)',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
    ),
  };

}

