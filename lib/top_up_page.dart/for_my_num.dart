import 'package:flutter/material.dart';

class for_my_number extends StatelessWidget {
  const for_my_number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange[400],
        title: const Text(
          'Top up',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new, // You can use any icon here
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.orange[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/p1.jpeg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                  const Text(
                    'My number ',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  const Text(
                    '011 714 951',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 80,
                      color: Colors.amber,
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 8, right: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/p8.png',
                                      width: 35,
                                      height: 35,
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Link a Card or Bank Account ',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.pink[700]),
                                        ),
                                        const Text(
                                          'For faster & Easier Top up',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'images/z9.png',
                                              width: 25,
                                              height: 25,
                                              fit: BoxFit.fill,
                                              filterQuality:
                                                  FilterQuality.medium,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Image.asset(
                                              'images/z8.png',
                                              width: 25,
                                              height: 25,
                                              fit: BoxFit.fill,
                                              filterQuality:
                                                  FilterQuality.medium,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Image.asset(
                                              'images/z5.jpg',
                                              width: 25,
                                              height: 20,
                                              fit: BoxFit.fill,
                                              filterQuality:
                                                  FilterQuality.medium,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Image.asset(
                                              'images/z7.png',
                                              width: 25,
                                              height: 25,
                                              fit: BoxFit.fill,
                                              filterQuality:
                                                  FilterQuality.medium,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Image.asset(
                                              'images/z6.png',
                                              width: 25,
                                              height: 25,
                                              fit: BoxFit.fill,
                                              filterQuality:
                                                  FilterQuality.medium,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
            ),
            const SizedBox(
              height: 10,
            ),
            const card(
              imagePath: 'images/z10.jpg',
              title: 'Scratch card',
              subtitle: 'Top to pay With ABA Mobile',
            ),
            const SizedBox(
              height: 10,
            ),
            const card(
              imagePath: 'images/z5.jpg',
              title: 'ABA PAY',
              subtitle: 'Top to pay With ABA Mobile',
            ),
            const SizedBox(
              height: 10,
            ),
            const card(
              imagePath: 'images/z11.png',
              title: 'Credit/Debit Card',
              subtitle: 'VISA, JCB, Mastercard, Unionpay',
            ),
            const SizedBox(
              height: 10,
            ),
            const card(
              imagePath: 'images/z12.png',
              title: 'Wing Bank ',
              subtitle: 'Pay Securely With Wing Bank',
            ),
            const SizedBox(
              height: 10,
            ),
            const card(
              imagePath: 'images/z13.jpg',
              title: 'Acleda Bank',
              subtitle: '',
            ),
            const SizedBox(
              height: 10,
            ),
            const card(
              imagePath: 'images/z14.png',
              title: 'Alipay',
              subtitle: '',
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final EdgeInsets padding;
  final double imageWidth;
  final double imageHeight;
  final double imageBorderRadius;
  final double cardBorderRadius;
  final Color cardColor;

  const card({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.padding = const EdgeInsets.only(left: 15, right: 15),
    this.imageWidth = 30.0,
    this.imageHeight = 30.0,
    this.imageBorderRadius = 10.0,
    this.cardBorderRadius = 10.0,
    this.cardColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(cardBorderRadius),
        child: Container(
          width: double.infinity,
          color: cardColor,
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(imageBorderRadius),
                  child: Image.asset(
                    imagePath,
                    width: imageWidth,
                    height: imageHeight,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.medium,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
