import 'package:cellcaed_app/Telecom_Plan_Services/CustomCard-3.dart';
import 'package:flutter/material.dart';

class Social_Pack extends StatelessWidget {
  const Social_Pack({super.key});

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
                  'images/z24.png',
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
                  'Upsize your Social Life with Social Pack Add-On! Enjoy a dedicated data pack for your all of your favorite Social Media Apps!',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const CustomCard_3(
                avatarImagePath: 'images/z20.png',
                title: 'Social pack S',
                price: '\$0.05',
                data: '250MB',
                validity: '1 Days',
                text:
                    'Apps include: Facebook, Messenger, WhatsApp, Telegram, Linkedln, and Discord.',
                autoRenewText: 'Auto-renew every day',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_3(
                avatarImagePath: 'images/z20.png',
                title: 'Social pack M',
                price: '\$0.10',
                data: '500MB',
                validity: '1 Days',
                text:
                    'Apps include: Facebook, Messenger, WhatsApp, Telegram, LinkedIn, Discord, Instagram, and WeChat.',
                autoRenewText: 'Auto-renew every day',
                autoRenewImagePath: 'images/s8.png'),
            const CustomCard_3(
                avatarImagePath: 'images/z20.png',
                title: 'Social pack M',
                price: '\$0.20',
                data: '1 G',
                validity: '1 Days',
                text:
                    'Apps include: Facebook, Messenger, WhatsApp, Telegram, Linkedln, Discord, Instagram, WeChat, Tik Tok, and YouTube.',
                autoRenewText: 'Auto-renew every day',
                autoRenewImagePath: 'images/s8.png'),
          ],
        ),
      ),
    );
  }
}
