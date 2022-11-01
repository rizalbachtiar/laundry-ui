import 'package:flutter/material.dart';

class ListLaundryLocation extends StatelessWidget {
  const ListLaundryLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 12),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/promo/sepatu.png'),
                    fit: BoxFit.cover
                )
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    // width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.yellow,),
                        SizedBox(width: 4,),
                        Text(
                          '4.5',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rapih Laundry',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffF467BB)
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.grey, size: 20,),
                  Text(
                    '2 km',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Text(
            'Mulai dari Rp50.000',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

