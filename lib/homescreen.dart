import 'package:carousel_slider/carousel_slider.dart';
import 'package:cellcaed_app/Entertainment_Lifestyle_Services/Entertainment_Lifestyle_Services.dart';
import 'package:cellcaed_app/Entertainment_Lifestyle_Services/Insurance_Financial_Services.dart';
import 'package:cellcaed_app/Telecom_Plan_Services/Cellcard_Serey.dart';
import 'package:cellcaed_app/Telecom_Plan_Services/Telecom_Plan_Services.dart';
import 'package:cellcaed_app/details_screen.dart';
import 'package:cellcaed_app/my-plan_page.dart/my-plan.dart';
import 'package:cellcaed_app/my-plan_page.dart/quick_pay.dart';
import 'package:cellcaed_app/see_all_screen/game2.dart';
import 'package:cellcaed_app/see_all_screen/hot_promos_detail.dart';
import 'package:cellcaed_app/see_all_screen/hotpromos_detail2.dart';
import 'package:cellcaed_app/see_all_screen/see_all_acreen.dart';
import 'package:cellcaed_app/top_up_page.dart/for_my_num.dart';
import 'package:cellcaed_app/top_up_page.dart/for_others.dart';
import 'package:cellcaed_app/top_up_page.dart/sechedule_top_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cellcaed_app/discover/discover_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Map<String, String>> myitem = [
    {
      'image': 'images/p3.jpg',
      'text': 'Discover our new plans',
      'sub': 'Subscribe',
    },
    {
      'image': 'images/p4.jpg',
      'text': 'Cellcard Home wi-fi ',
      'sub': 'Subscribe',
    },
    {
      'image': 'images/p5.jpg',
      'text': 'Get the latest updates',
      'sub': 'Subscribe',
    },
    {
      'image': 'images/f1.jpg',
      'text': 'PlayGame Add-on',
      'sub': 'Subscribe',
    },
  ];

  int mycurrenindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              color: Colors.orange[400],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 22,
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
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '011 714 951',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: 14,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.swap_horizontal_circle,
                            color: Colors.blue,
                            size: 14,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Switch Account',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'images/p2.png',
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Main Balance',
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              'Cellcard Serey+',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '\$0.00',
                          style: TextStyle(
                            color: Color.fromARGB(255, 165, 19, 109),
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'valid until: 03 jan 2025',
                              style: TextStyle(color: Colors.blueGrey[300]),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Detail(),
                                    ));
                              },
                              child: const Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 207, 25, 137),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                showBottomSheet(
                                  enableDrag: true,
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: 290,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              height: 80,
                                              color: Colors.orange[400],
                                              child: Image.asset(
                                                'images/p1-.jpg',
                                                width: double.infinity,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          top_up_card(
                                            text: const Text(
                                              'For my number',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const for_my_number(),
                                                  ));
                                            },
                                          ),
                                          const SizedBox(height: 10),
                                          top_up_card(
                                            text: const Text(
                                              'For another',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const for_other()),
                                              );
                                            },
                                          ),
                                          const SizedBox(height: 10),
                                          top_up_card(
                                            text: const Text(
                                              'Sechedule a top-up',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ScheduleTopUp()),
                                              );
                                            },
                                          ),
                                          const SizedBox(height: 10),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.phone_iphone_rounded,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Top Up',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const My_plan()),
                                );
                              },
                              icon: const Icon(
                                Icons.credit_card_rounded,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'My Plan',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const quick_pay()),
                                );
                              },
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Quick Pay',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'What\'s Hot',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SeeAll(),
                        ),
                      );
                    },
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 225,
              child: CarouselSlider.builder(
                itemCount: myitem.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Cellcard_Serey(),
                                ),
                              );
                            } else if (index == 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hotpromos_detail2(),
                                ),
                              );
                            } else if (index == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => hotpromos_detail(),
                                ),
                              );
                            } else if (index == 3) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => game2(),
                                ),
                              );
                            }
                            print('Image ${index + 1} tapped');
                          },
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            child: Image.asset(
                              myitem[index]['image']!,
                              width: double.infinity,
                              height: 160,
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                myitem[index]['text']!,
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 18),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Subscribe',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 255.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.9,
                  onPageChanged: (index, reason) {
                    setState(() {
                      mycurrenindex = index;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: mycurrenindex,
                count: myitem.length,
                effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.orange),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Plan',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 23,
                      color: Colors.orange,
                      child: const Text(
                        'Renewing today',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/p7.png'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Cellcard Serey+'),
                                        Text('\$1.50'),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 14,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 100,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, right: 10),
                                  child: Row(
                                    children: [
                                      const Text(
                                          'Save your unused bundle renew'),
                                      const Spacer(),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 18),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: const Text(
                                          'Renew Now',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 0, bottom: 10),
                                  child: Text('before 10 jan 2024 | 06:57 PM'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 115,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          child: Container(
                            width: 180,
                            height: 30,
                            color: const Color.fromARGB(255, 207, 25, 137),
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Icon(
                                  Icons.wallet_giftcard_rounded,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Rollover reminder',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Subscribe',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Discover(),
                            ),
                          );
                        },
                        child: const Text(
                          'Discover more',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Telecom_Plan_Services(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 100,
                              height: 110,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'images/p1.jpeg',
                                          filterQuality: FilterQuality.medium,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      'Telecom Plan & Services',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Entertainment_Lifestyle_Services(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 100,
                              height: 110,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 18,
                                      child: Image.asset(
                                        'images/a1.png',
                                        filterQuality: FilterQuality.medium,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      'Entertainment & Lifestyle Services',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Insurance_Financial_Services(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 100,
                              height: 110,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'images/p1.jpeg',
                                          filterQuality: FilterQuality.medium,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      'Insurance & Financial Services',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          width: 100,
          height: 50,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.orange[400],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Iconsax.more_circle,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Chat',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding top_up_card({required Text text, required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text,
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                    size: 12,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
