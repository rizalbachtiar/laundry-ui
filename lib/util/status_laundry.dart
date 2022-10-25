import 'package:flutter/material.dart';

class StatusLaundry extends StatelessWidget {
  final String durasi;
  final String tgl;
  final String judul;
  final String jumlahlaundry;
  final String tipeLaundy;
  final Color tipeColor;
  final Color statusColor;
  final Icon tipeIcon;
  final Icon statusIcon;
  const StatusLaundry({
    Key? key,
    required this.durasi,
    required this.tgl,
    required this.judul,
    required this.jumlahlaundry,
    required this.tipeLaundy,
    required this.tipeColor,
    required this.statusColor,
    required this.tipeIcon,
    required this.statusIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                  decoration: BoxDecoration(
                      color: statusColor,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      statusIcon,
                      const SizedBox(width: 5,),
                      Text(
                        durasi,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  )
              ),
              Text(tgl)
            ],
          ),
          const SizedBox(height: 18,),
          Text(judul,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12,),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: const Color(0xffD7EEFF),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(Icons.local_mall_outlined),
              ),
              const SizedBox(width: 10,),
              Text(
                jumlahlaundry,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),

              const SizedBox(width: 25,),

              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: tipeColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: tipeIcon,
              ),
              const SizedBox(width: 10,),
              Text(
                tipeLaundy,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
