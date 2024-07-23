import 'package:cellcaed_app/my-plan_page.dart/CustomCard-2.dart';
import 'package:flutter/material.dart';

class data extends StatelessWidget {
  const data({super.key});

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
                  'images/q6.png',
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
                  'Add data on top of any plan whenver you need to.        Also great for your tablets and routers!',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const CustomCard_2(
                avatarImagePath: 'images/z21.png',
                title: 'Data+',
                price: '\$0.25',
                data: '1GB',
                validity: '1Days',
                autoRenewText: 'Auto-renew every day',
                autoRenewImagePath: 'images/s8.png')
          ],
        ),
      ),
    );
  }
}
