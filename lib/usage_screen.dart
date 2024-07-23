import 'package:flutter/material.dart';

class usage extends StatelessWidget {
  const usage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 55,
        backgroundColor: Colors.orange[400],
        title: const Text(
          'Usage',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.orange[100],
            child: const Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                textAlign: TextAlign.center,
                'These transactions are from your main balance usage in the last 7 day. Some transactions may take up to 60 minutes to appear.',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 5, bottom: 10),
            child: Text('11 jul 2024'),
          ),
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Image.asset(
                        'images/s8.png',
                        filterQuality: FilterQuality.medium,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Auto-renewed Cellcard Serey+',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '11 jul 2024 | 3:15 PM',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    '-\$1.50',
                    style: TextStyle(color: Color.fromARGB(255, 168, 21, 111)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        'images/s9.png',
                        filterQuality: FilterQuality.medium,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Topped up ',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '11 jul 2024 | 3:15 PM',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    '+\$1.50',
                    style: TextStyle(color: Colors.blue),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
