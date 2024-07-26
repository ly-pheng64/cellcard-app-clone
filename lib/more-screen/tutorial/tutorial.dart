import 'package:cellcaed_app/more-screen/card1-.dart';
import 'package:cellcaed_app/more-screen/tutorial/but3.dart';
import 'package:cellcaed_app/more-screen/tutorial/buy1.dart';
import 'package:cellcaed_app/more-screen/tutorial/buy2.dart';
import 'package:cellcaed_app/more-screen/tutorial/buy4.dart';
import 'package:cellcaed_app/more-screen/tutorial/top_up1.dart';
import 'package:cellcaed_app/more-screen/tutorial/top_up2.dart';
import 'package:cellcaed_app/more-screen/tutorial/top_up3.dart';
import 'package:cellcaed_app/more-screen/tutorial/top_up4.dart';
import 'package:cellcaed_app/more-screen/tutorial/top_up5.dart';
import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        title: const Text(
          'Settings',
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
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 50,
                color: Colors.orange[400],
                child: TabBar(
                  tabAlignment: TabAlignment.start,
                  controller: _tabController,
                  isScrollable: true,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('Top-up'),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Buy Plan & Services',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 160,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('Manage Account & p...'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Top-up',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: GridView.count(
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            crossAxisCount: 2,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const top_up1(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/z43.png',
                                  text: 'Top Up For Own Number',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const top_up2(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/z43.png',
                                  text: 'Top Up For another Number',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const top_up3(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/z44.png',
                                  text: 'Set Schedule Top Up ',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const top_up4(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/z45.jpg',
                                  text: 'Link Credit/Debit Card ',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const top_up5(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/z45.jpg',
                                  text:
                                      'Link Bank account for a faster & easier top up ',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Buy Plan & Services',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: GridView.count(
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            crossAxisCount: 2,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const buy(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/z46.jpg',
                                  text: 'subscribe Add-on plan',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const buy2(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/z46.jpg',
                                  text: 'Send gift to another',
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const buy3(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/z46.jpg',
                                  text: 'subscribe Value Added Services',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Manage Account & profile',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: GridView.count(
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            crossAxisCount: 2,
                            children:  <Widget>[
                              GestureDetector(
                                  onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const buy4(),
                                    ),
                                  );
                                },
                                child: const Card1(
                                  imagePath: 'images/f2.png',
                                  text: 'Update profile',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
