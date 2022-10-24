import 'package:flutter/material.dart';

class LaundryPage extends StatefulWidget {
  const LaundryPage({ Key? key }) : super(key: key);

  @override
  State<LaundryPage> createState() => _LaundryPageState();
}

class _LaundryPageState extends State<LaundryPage> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  int? _index;
  VoidCallback? onChanged;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    onChanged = () {
      setState(() {
        _index = _tabController?.index;
      });
    };
    _tabController?.addListener(onChanged!);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 30, right: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        )
                      ]
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        )
                      ),
                      onPressed: (){},
                      child: const Icon(
                          Icons.arrow_back_ios,
                        size: 18,
                        color: Color(0xffF467BB),
                      ),
                    ),
                  ),
                  const SizedBox(width: 25,),
                  const Text(
                    'Cucian kamu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40,),

              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffF467BB),
                    width: 1
                  ),
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  // padding: EdgeInsets.symmetric(vertical: 2),
                  // give the indicator a decoration (color and border radius)
                  indicator: _tabController?.index == 0
                    ? BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(25)
                    ),
                    color: const Color(0xffF467BB),
                  )
                  : BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(25)
                    ),
                    color: const Color(0xffF467BB),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: const Color(0xffF467BB),
                  tabs: [
                    // first tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Dalam Proses',
                    ),

                    // second tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Selesai (1)',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // first tab bar view widget
                    Center(
                      child: Text(
                        'dalam proses',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    // second tab bar view widget
                    Center(
                      child: Text(
                        'dalam proses',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}