import 'package:flutter/material.dart';

class manage_acc extends StatelessWidget {
  const manage_acc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        title: const Text(
          'Manage Accounts',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 17, right: 17, bottom: 0, top: 15),
            child: Row(
              children: [
                Text(
                  'Primary Account',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.question_mark_rounded,
                  color: Colors.orange,
                  size: 13,
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                // height: 100,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 8),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/p1.jpeg',
                              width: 35,
                              height: 35,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SORN LYPHENG',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '011 714 951',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.check,
                            color: Colors.blue,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      indent: 30,
                      endIndent: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 15),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'images/z42.png',
                              width: 17,
                              height: 17,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Linked Devices',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.blue,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 17, right: 17, top: 15, bottom: 8),
            child: Text(
              'Linked Accounts',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 8, bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 17, right: 17, top: 15, bottom: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/a2.png',
                        width: 18,
                        height: 18,
                        filterQuality: FilterQuality.medium,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Add another phone number'),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.blue,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.chat_bubble,
                        size: 14,
                      ),
                      SizedBox(
                          width:
                              8), // Add some space between the icon and the text
                      Text(
                        'Switch Account',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
