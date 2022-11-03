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
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.all(30),
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
                          children: [
                            Text('Rapih Laundry'),
                            Row(
                              children: [
                                Icon(Icons.star),
                                Text('4.5')
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text('Jl. Duren tiga raya No.7, RT.7/RW.6')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time),
                            Text('Buka Jam 08:00 - 19:00')
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: (){},
                              icon: Icon(Icons.phone, color: Colors.pinkAccent,),
                              label: Text('Phone', style: TextStyle(
                                color: Colors.pinkAccent
                              ),),
                              style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all(Colors.transparent),
                                backgroundColor: MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: Colors.pinkAccent,)
                                  )
                                )
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: (){},
                              icon: Icon(Icons.send, color: Colors.pinkAccent,),
                              label: Text('Petunjuk Arah', style: TextStyle(
                                  color: Colors.pinkAccent
                              ),),
                              style: ButtonStyle(
                                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          side: BorderSide(color: Colors.pinkAccent,)
                                      )
                                  )
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
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.note_add_outlined),
                              SizedBox(width: 6,),
                              Text('List Harga', style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.note_add_outlined),
                              SizedBox(width: 6,),
                              Text('List Harga', style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.note_add_outlined),
                              SizedBox(width: 6,),
                              Text('List Harga', style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.note_add_outlined),
                              SizedBox(width: 6,),
                              Text('List Harga', style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomScrollView(
                      primary: false,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
