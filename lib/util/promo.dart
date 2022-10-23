import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  final String firstName;
  final String secondName;
  final String coupon;
  final String imageUrl;

  const Promo({
    Key? key,
    required this.firstName,
    required this.secondName,
    required this.coupon,
    required this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 100, bottom: 16),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.grey[400], 
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: ExactAssetImage(imageUrl),
            fit: BoxFit.cover
          )),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstName,
              style: const TextStyle(
                fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              secondName,
              style: const TextStyle(
                fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Text(
                coupon,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xffF467BB)),
              ),
            )
          ]),
    );
  }
}
