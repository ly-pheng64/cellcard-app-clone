import 'package:cellcaed_app/Telecom_Plan_Services/International.dart';

import 'package:flutter/material.dart';

class roaming extends StatelessWidget {
  const roaming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.orange[400],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'International',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const International(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: double.infinity,
                  // height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 18,
                              // backgroundColor: Colors.orange,
                              child: Image.asset(
                                'images/s3.png',
                                filterQuality: FilterQuality.medium,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Roaming Internet',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'From \$2.00',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.pink[800],
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.blue,
                                size: 18,
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 5),
                          child: Divider(),
                        ),
                        const Text(
                          'Worry-free roaming internet bundles, starting from     \$2',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
