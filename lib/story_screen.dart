import 'package:cellcaed_app/list.dart';

import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

final List<Map<String, String>> pic = [
  {
    'image': 'images/d1.jpg',
    'title':
        'Data of nearly all AT&T customers downloaded to a third-party platform in security breach',
  },
  {
    'image': 'images/d2.jpg',
    'title':
        'Meet Mellody, The Vegan Honey Company Aiming To Keep Busy Bees From Burning Out',
  },
  {
    'image': 'images/d3.jpg',
    'title':
        'Theme Park And Rollercoaster Simulator Planet Coaster Is Getting A Sequel',
  },
];

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pic.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 330,
                    margin: const EdgeInsets.all(10.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            pic[index]['image'] ?? 'images/default.jpg',
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.all(5.0),
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Color.fromARGB(218, 0, 0, 0),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  pic[index]['title'] ?? 'Unknown',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: CategoryList(
                categories: [
                  'Social',
                  'Tech and Business',
                  'Health and Beauty',
                  'Entertainment and Game'
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 15),
              child: logolist(ImageUrls: [
                'images/p1.jpeg',
                'images/q1.png',
                'images/q2.png',
                'images/q3.png',
                'images/p1.jpeg',
                'images/q1.png',
                'images/q2.png',
                'images/q3.png',
              ]),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Text(
                'Latest News',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset(
                              'images/z1.jpg',
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'RRegulator issues warning to unlicensed City Gem condo project ',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Trending • 04:46 PM',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset(
                              'images/z2.jpg',
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hun Manet highlights crucial role of sports in national development ',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Trending • 04:46 PM',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset(
                              'images/z3.jpg',
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Korean Doctors providing free medical exams, treatments in Kampong Thom July 26-28 ',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Trending • 04:46 PM',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset(
                              'images/z4.jpg',
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Weekend of powercuts for Phnom Penh ',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Trending • 04:46 PM',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class logolist extends StatelessWidget {
  final List<String> ImageUrls;

  const logolist({super.key, required this.ImageUrls});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ImageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CategoryButton(
              imageUrl: ImageUrls[index],
            ),
          );
        },
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String imageUrl;

  const CategoryButton({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25, // Increase the radius to make the CircleAvatar bigger
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40), // Match the radius here
        child: Image.asset(
          imageUrl,
          // width: 80, // Adjust width and height if necessary
          // height: 80,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.medium,
        ),
      ),
    );
  }
}
