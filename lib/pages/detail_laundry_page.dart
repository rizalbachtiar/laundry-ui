import 'package:clone_ui_2/util/price_list.dart';
import 'package:flutter/material.dart';

import '../util/services.dart';

class DetailLaundryPage extends StatefulWidget {
  const DetailLaundryPage({Key? key}) : super(key: key);

  @override
  State<DetailLaundryPage> createState() => _DetailLaundryPageState();
}

class _DetailLaundryPageState extends State<DetailLaundryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/images/promo/baju.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.fromLTRB(30, 25, 30, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff4b4e4e).withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rapih Laundry',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Color(0xffFFD131),
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Jl. Duren tiga raya No.7, RT.7/RW.6',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 20,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Buka Jam 08:00 - 19:00',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.phone,
                                color: Color(0xffF467BB),
                                size: 20,
                              ),
                              label: Text(
                                'Phone',
                                style: TextStyle(
                                  color: Color(0xffF467BB),
                                ),
                              ),
                              style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.white,
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                      color: Color(0xffF467BB),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.send,
                                color: Color(0xffF467BB),
                                size: 20,
                              ),
                              label: Text(
                                'Petunjuk Arah',
                                style: TextStyle(
                                  color: Color(0xffF467BB),
                                ),
                              ),
                              style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.white,
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                      color: Color(0xffF467BB),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 2),
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PriceList(),
                        PriceList(),
                        PriceList(),
                        PriceList(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomScrollView(
                      primary: false,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 20, right: 20),
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
                                  description:
                                      'Cuci bersih wangi, dan di setrika'),
                              Services(
                                  imageUrl: 'assets/images/product/Clothes.png',
                                  title: 'Dry Cleaning',
                                  description:
                                      'Jas, Gaun dan semacamnya bersih'),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
