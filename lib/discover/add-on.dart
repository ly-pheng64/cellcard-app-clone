import 'package:cellcaed_app/Telecom_Plan_Services/Social_Pack.dart';
import 'package:cellcaed_app/Telecom_Plan_Services/data+.dart';
import 'package:flutter/material.dart';

class add_on extends StatelessWidget {
  const add_on({super.key});

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
          'Add-ons',
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
                  builder: (context) => const Social_Pack(),
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
                                'images/z20.png',
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
                                  'Social Pack',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'From \$0.05',
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
                          'Upsize your Social Life with Social Pack Add-On! Enjoy a dedicated data pack for your all of your favorite Social Media Apps!.',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const data(),
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
                              child: Image.asset('images/z21.png'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Data+',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'From \$0.25',
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
                          'With DATA+, you can now add more data on top of your Serey+ plan when you need more Data for Social Media, Gaming, Movie Streaming or Heavy File Dow...',
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
