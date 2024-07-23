import 'package:cellcaed_app/my-plan_page.dart/CustomCard.dart';
import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

class Cellcard_Serey extends StatelessWidget {
  const Cellcard_Serey({super.key});

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
                  'images/p3.jpg',
                  width: double.infinity,
                  height: 130,
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
                  left: 15, right: 15, top: 10, bottom: 10),
              child: Container(
                child: const Text(
                  'The product with big data that allows you to discover and enjoy your kind of fun with full freedom of data usage.',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const CustomCard(
                avatarImagePath: 'images/p7.png',
                title: 'Cellcard Serey+',
                price: '\$1.50',
                data: '15 GB',
                calls: '100 Mins',
                sms: '100 SMS',
                validity: '7Days',
                autoRenewText: 'Auto-renew every 7 days',
                bundleRolloverText: 'Bundle rollover',
                rolloverUnusedText: 'Rollover Unused for 1 Year',
                autoRenewImagePath: 'images/s8.png',
                bundleRolloverImagePath: 'images/z23.png'),
            const CustomCard(
                avatarImagePath: 'images/p7.png',
                title: 'Cellcard Serey+',
                price: '\$4.00',
                data: '25 GB',
                calls: '2500 Mins',
                sms: '2500 SMS',
                validity: '28 Days',
                autoRenewText: 'Auto-renew every 28 days',
                bundleRolloverText: 'Bundle rollover',
                rolloverUnusedText: 'Rollover Unused for 1 Year',
                autoRenewImagePath: 'images/s8.png',
                bundleRolloverImagePath: 'images/z23.png'),
            const CustomCard(
                avatarImagePath: 'images/p7.png',
                title: 'Cellcard Serey+',
                price: '\$6.00',
                data: '60 GB',
                calls: '150 Mins',
                sms: '150 SMS',
                validity: '30Days',
                autoRenewText: 'Auto-renew every 30 days',
                bundleRolloverText: 'Bundle rollover',
                rolloverUnusedText: 'Rollover Unused for 1 Year',
                autoRenewImagePath: 'images/s8.png',
                bundleRolloverImagePath: 'images/z23.png'),
            const CustomCard(
                avatarImagePath: 'images/p7.png',
                title: 'Cellcard Serey+',
                price: '\$10.00',
                data: '100 GB',
                calls: '200 Mins',
                sms: '200 SMS',
                validity: '30Days',
                autoRenewText: 'Auto-renew every 30 days',
                bundleRolloverText: 'Bundle rollover',
                rolloverUnusedText: 'Rollover Unused for 1 Year',
                autoRenewImagePath: 'images/s8.png',
                bundleRolloverImagePath: 'images/z23.png'),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
