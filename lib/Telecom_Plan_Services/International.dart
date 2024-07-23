import 'package:cellcaed_app/Telecom_Plan_Services/CustomCard-4.dart';
import 'package:flutter/material.dart';

class International extends StatelessWidget {
  const International({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'images/z32.png',
                  width: double.infinity,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_circle_left,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 5, bottom: 10),
              child: Container(
                child: const Text(
                  'Worry-free roaming internet bundles, starting from \$2.',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'Thailand Pack',
                price: '\$2.00',
                data: '700 MB',
                validity: '1 Days',
                image: 'images/z25.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'Thailand Pack',
                price: '\$5.00',
                data: '3 GB',
                validity: '3 Days',
                image: 'images/z25.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'Thailand Pack',
                price: '\$10.00',
                data: ' 7 GB',
                validity: '7 Days',
                image: 'images/z25.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'ASEAN Pack',
                price: '\$6.00',
                data: ' 1 GB',
                validity: '7 Days',
                image: 'images/z26.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'EU Pack',
                price: '\$10.00',
                data: ' 1 GB',
                validity: '7 Days',
                image: 'images/z27.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'Middle East Pack',
                price: '\$10.00',
                data: ' 1 GB',
                validity: '7 Days',
                image: 'images/z28.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'Oceania Pack',
                price: '\$10.00',
                data: ' 1 GB',
                validity: '7 Days',
                image: 'images/z29.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'America Pack',
                price: '\$15.00',
                data: ' 2 GB',
                validity: '7 Days',
                image: 'images/z30.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_4(
                avatarImagePath: 'images/s3.png',
                title: 'Asia Pack',
                price: '\$15.00',
                data: ' 2 GB',
                validity: '7 Days',
                image: 'images/z31.jpg',
                autoRenewText: 'Non-auto-renew',
                autoRenewImagePath: 'images/s8.png'),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
