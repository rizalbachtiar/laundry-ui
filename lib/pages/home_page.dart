import 'package:clone_ui_2/util/promo.dart';
import 'package:clone_ui_2/util/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
        child: Column(
          children: <Widget>[
            //header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Selamat Malam,',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Rizal',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Image(
                        image: AssetImage(
                            "assets/images/header/notifications.png"),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: const Image(
                        image: AssetImage("assets/images/header/person.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            //notification
            Container(
              padding: const EdgeInsets.only(
                  left: 14, top: 14, right: 20, bottom: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff06D6A0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff06D6A0).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: const Color(0xff83EBCF), width: 8)),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 15,
                          )),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Laundry kamu sudah selesai!',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Lagi otw di anter nih! 🛵',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2)),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 15,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //promo
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Promo',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF691CD)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    padding: EdgeInsets.only(right: 4),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Promo(
                        firstName: 'Bikin sepatu kinclong!',
                        secondName: 'Pake kode ini :',
                        coupon: 'KUCEKSHOE21',
                        imageUrl: 'assets/images/promo/sepatu.png',
                      ),
                      Promo(
                        firstName: 'Bikin pakaian bersih!',
                        secondName: 'Pake kode ini :',
                        coupon: 'T-SHIRT21',
                        imageUrl: 'assets/images/promo/baju.png',
                      ),
                      Promo(
                        firstName: 'Bikin boneka kinclong!',
                        secondName: 'Pake kode ini :',
                        coupon: 'KUCEKDOLL21',
                        imageUrl: 'assets/images/promo/baju.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 6,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffF467BB)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffF691CD)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffF691CD)),
                    ),
                  ],
                )
              ],
            ),

            //layanan kami
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Layanan Kami',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              child: CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.only(top: 20),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      children: const <Widget>[
                        //'assets/images/product/Washing-Machine.png'
                        //Cuci Aja
                        //
                        Services(
                            imageUrl:
                                'assets/images/product/Washing-Machine.png',
                            title: 'Cuci Aja',
                            description:
                                'Cuci bersih wangi, tapi gak di setrika'),
                        Services(
                            imageUrl: 'assets/images/product/Iron.png',
                            title: 'Cuci Setrika',
                            description: 'Cuci bersih wangi, dan di setrika'),
                        Services(
                            imageUrl: 'assets/images/product/Clothes.png',
                            title: 'Dry Cleaning',
                            description: 'Jas, Gaun dan semacamnya bersih'),
                        Services(
                            imageUrl: 'assets/images/product/Carpet.png',
                            title: 'Carpet',
                            description: 'Biar nyaman lesehan santai'),
                        Services(
                            imageUrl: 'assets/images/product/Bed.png',
                            title: 'Kasur',
                            description: 'Tidur jadi nyaman bebas gatel'),
                        Services(
                            imageUrl: 'assets/images/product/Shoes.png',
                            title: 'Sepatu & Tas',
                            description: 'Biar tambah kece dan bersih'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Stack(

              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff0E1446).withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      // color: Color(0xff0E1446),
                    ),
                    // margin: EdgeInsets.only(top: 12),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xff0E1446)),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.horizontal(left: Radius.circular(50))
                                  )
                              ),
                          ),
                          onPressed: (){},
                          child: const Icon(
                              Icons.home_outlined,
                            color: Color(0xffFFD131),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xff0E1446)),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero
                                )
                            ),
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, '/laundry');
                          },
                          child: const Icon(Icons.confirmation_num_outlined),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xff0E1446)),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero
                                )
                            ),
                          ),
                          onPressed: (){},
                          child: const Icon(Icons.location_on_outlined),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xffF467BB)),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.horizontal(right: Radius.circular(50))
                                  )
                              )
                          ),
                          onPressed: (){},
                          child: const Icon(Icons.timer_sharp),
                        ),
                      ],
                    )
                  ),
                )
              ],
            )
            
          ],
        ),
      )),
    );
  }
}
