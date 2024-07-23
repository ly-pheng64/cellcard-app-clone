import 'package:cellcaed_app/Entertainment_Lifestyle_Services/vas.dart';
import 'package:cellcaed_app/Telecom_Plan_Services/Cellcard_Serey.dart';
import 'package:cellcaed_app/Telecom_Plan_Services/Social_Pack.dart';
import 'package:cellcaed_app/discover/add-on.dart';
import 'package:cellcaed_app/discover/roaming.dart';
import 'package:cellcaed_app/my-plan_page.dart/See_other_plans.dart';
import 'package:cellcaed_app/my-plan_page.dart/quick_pay.dart';
import 'package:cellcaed_app/story_screen.dart';
import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

final List<Map<String, String>> pic = [
  {'image': 'images/p5-.jpg', 'title': 'Social Pack S', 'price': '\$0.5'},
  {'image': 'images/p3-.jpg', 'title': 'Cell Serey+', 'price': '\$1.50'},
  {'image': 'images/p4-.jpg', 'title': 'DATA+', 'price': '\$0.25'},
];

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange[400],
          title: const Text(
            'Discover our products',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: const TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Products'),
                  Tab(text: 'Stories'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ProductsPage(),
                  Center(
                    child: Story(),
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

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Cellcard_Serey(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/p3.jpg',
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Browse by Category',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            shadowColor: Colors.black,
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.zero,
              child: SizedBox(
                height: 100, // Ensure there's enough height for the Row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const add_on(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        image: 'images/s2.png',
                        text: 'Add-ons',
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const roaming(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        image: 'images/s3.png',
                        text: 'International',
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VAS(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        image: 'images/s4.png',
                        text: 'VAS',
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 0.5,
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const See_other_plans(),
                          ),
                        );
                      },
                      child: const CategoryCard(
                        image: 'images/s5.png',
                        text: 'Plans',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Most Popular Internet pack',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
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
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/z48.jpg',
                        width: 160,
                        height: 170,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.medium,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Social Pack S'),
                    Text(
                      '\$0.05',
                      style: TextStyle(color: Colors.pink[600]),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cellcard_Serey(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/p3-.jpg',
                        width: 160,
                        height: 170,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.medium,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Cellcard Serey+'),
                    Text(
                      '\$1.50',
                      style: TextStyle(color: Colors.pink[600]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const quick_pay(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 70,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(239, 108, 0, 1),
                  Color.fromARGB(255, 245, 185, 94)
                ])),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white38,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Your Quick Pay Templates',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Text('International Service'),
        ),
        const SizedBox(height: 10),
        Container(
          color: Colors.white,
          child: const Column(
            children: [
              ServiceItem(
                image: 'images/s7.png',
                text: 'ThaiLand Pack',
                price: '\$2.00',
              ),
              Divider(indent: 30, endIndent: 30, height: 10),
              ServiceItem(
                image: 'images/s7.png',
                text: 'ASEAN Pack',
                price: '\$6.00',
              ),
              Divider(indent: 30, endIndent: 30, height: 10),
              ServiceItem(
                image: 'images/s7.png',
                text: 'EU Pack',
                price: '\$10.00',
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String image;
  final String text;

  const CategoryCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 17,
          // backgroundImage: AssetImage(image),
          child: Image.asset(
            image,
            filterQuality: FilterQuality.medium,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String image;
  final String text;
  final String price;

  const ServiceItem({
    super.key,
    required this.image,
    required this.text,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(image),
              child: Image.asset(
                image,
                filterQuality: FilterQuality.medium,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  price,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                overlayColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Subscribe',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
