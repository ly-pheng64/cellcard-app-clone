import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.orange[400],
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Text(
                      'Accounts Details',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 8, right: 8, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Current plan',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Text(
                      'Cellcard Serey+',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('  Account Status'),
                        const SizedBox(height: 10),
                        const ActiveStatusWidget(),
                        const Text(
                            'Your account is active, all usage are available.'),
                        const Text(
                            'You can top up to extend your validity and continue your usage.'),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            // onPrimary: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 125, vertical: 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Top up',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                      width: 12,
                      height: 128,
                      color: Colors.amber,
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        child: Container(
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 8, right: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Active',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_rounded,
                                      color: Colors.blue,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Incoming or outgoing call, SMS and data usage are available',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_rounded,
                                      color: Colors.blue,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Your main balance can be used to subscribe any products/services or making cross-net and oversea calls/SMS',
                                        style: TextStyle(fontSize: 12),
                                      ),
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
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 12,
                      height: 183,
                      color: Colors.grey[400],
                    ),
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: Container(
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Inactive',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_rounded,
                                      color: Color.fromRGBO(144, 202, 249, 1),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Incoming calls and SMS are available',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_rounded,
                                      color: Color.fromRGBO(144, 202, 249, 1),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Emergency calls to 117 (Police), 118 (Fire), and 119 (Ambulance) are still available free of charge.',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.close_rounded,
                                      color: Color.fromRGBO(239, 154, 154, 1),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Your subscription, data usage, and outgoing call/SMS are blocked.',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.close_rounded,
                                      color: Color.fromRGBO(239, 154, 154, 1),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Your main balance usage is blocked.',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      ),
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
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 12,
                      height: 160,
                      color: const Color.fromRGBO(239, 154, 154, 1),
                    ),
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: Container(
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'To be suspended',
                                  style: TextStyle(
                                    color: Color.fromRGBO(239, 154, 154, 1),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.check_rounded,
                                      color: Colors.blue,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Emergency calls to 117 (Police), 118 (Fire), and 119 (Ambulance) are still available free of charge.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.close_rounded,
                                      color: Color.fromRGBO(239, 154, 154, 1),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Incoming or outgoing calls, SMS, and data usage are blocked.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.close_rounded,
                                      color: Color.fromRGBO(239, 154, 154, 1),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Your subscriptions, data usage, and main balance usage are blocked.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
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
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  color: Colors.white,
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.info_outline_rounded,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'After the phone number is suspended, it will be retained for 90 days to reactivate upon request. If no request is made, your number will be recycled and made available for resale.',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveStatusWidget extends StatelessWidget {
  const ActiveStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: const Size(300, 240),
                painter: ArcPainter(),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.check, color: Colors.white, size: 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Active',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Valid until: 11 Jan 2025',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15;
    // Draw the arc
    paint.color = const Color.fromARGB(255, 247, 157, 21);
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: 120),
      15.2,
      1.2,
      false,
      paint,
    );
    paint.color = Colors.grey;
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: 120),
      10.2,
      1.55,
      false,
      paint,
    );

    paint.color = const Color.fromARGB(255, 240, 115, 156);
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: 120),
      43.25,
      1.25,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
