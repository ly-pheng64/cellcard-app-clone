import 'package:cellcaed_app/more-screen/about.dart';
import 'package:cellcaed_app/more-screen/cellcard_store.dart';
import 'package:cellcaed_app/more-screen/link-card.dart';
import 'package:cellcaed_app/more-screen/manage_acc.dart';
import 'package:cellcaed_app/more-screen/setting.dart';
import 'package:cellcaed_app/more-screen/support.dart';
import 'package:cellcaed_app/more-screen/tutorial/tutorial.dart';
import 'package:cellcaed_app/top_up_page.dart/sechedule_top_up.dart';
import 'package:flutter/material.dart';

class more extends StatelessWidget {
  const more({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.orange[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'images/p1.jpeg',
                    filterQuality: FilterQuality.medium,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '011 714 951',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Row(
                  children: [
                    Text(
                      'SORN LYPHENG',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.check_circle,
                      color: Colors.white,
                      size: 12,
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
              size: 14,
            )
          ],
        ),
      ),
      body: Expanded(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 10),
          child: Column(
            children: [
              buildCard([
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScheduleTopUp(),
                      ),
                    );
                  },
                  child: buildRow('images/a4.png', 'Scheduled Top-up'),
                ),
                buildDivider(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const link_card(),
                      ),
                    );
                  },
                  child: buildRow('images/a3.png', 'Linked Payments & PIN'),
                ),
                buildDivider(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const manage_acc(),
                      ),
                    );
                  },
                  child: buildRow('images/a2.png', 'Manage Accounts'),
                ),
              ]),
              const SizedBox(height: 13),
              buildCard([
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  const Tutorial(),
                      ),
                    );
                  },
                  child: buildRow('images/a5.png', 'Tutorials'),
                ),
                buildDivider(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const cellcard_store(),
                      ),
                    );
                  },
                  child: buildRow('images/a6.png', 'Cellcard Stores'),
                ),
                buildDivider(),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Support()),
                      );
                    },
                    child: buildRow('images/a7.png', 'Support')),
                buildDivider(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const setting()),
                    );
                  },
                  child: buildRow('images/a8.png', 'Setting'),
                ),
                buildDivider(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const About()),
                    );
                  },
                  child: buildRow('images/a9.png', 'About'),
                ),
              ]),
              const SizedBox(height: 13),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Log out',
                  style: TextStyle(fontSize: 14, color: Colors.red),
                ),
              ),
              const Spacer(),
              const Text(
                'Copyright © 2024 Cellcard',
                style: TextStyle(fontSize: 12),
              ),
              const Text(
                'App clone Version by Sorn Lypheng',
                style: TextStyle(fontSize: 12),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(List<Widget> children) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }

  Widget buildRow(String imagePath, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 12,
          child: Image.asset(
            imagePath,
            filterQuality: FilterQuality.medium,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.blue,
          size: 14,
        ),
      ],
    );
  }

  Widget buildDivider() {
    return const Divider(indent: 30, endIndent: 10);
  }
}
