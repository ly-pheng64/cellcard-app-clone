import 'package:flutter/material.dart';

class link_card extends StatelessWidget {
  const link_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  color: Colors.orange[400],
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/p8.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        'Link a Card or Bank Account For ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      const Text('A Faster & Easier Top up',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Positioned(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: double.infinity,
                // height: 100,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.published_with_changes_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Link ABA Account',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: double.infinity,
                // height: 100,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.published_with_changes_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Link Credit/Debit Card',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'VISA, JCB, Mastercard, Unionpay',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your card or bank account may be charged to make sure it is valid. That amount will be automatically refunded to you.',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('linking your card or bank account, you agree to',
                    style: TextStyle(fontSize: 12)),
                Text(' Terms & Conditions',
                    style: TextStyle(fontSize: 12, color: Colors.blue))
              ],
            ),
          )
        ],
      ),
    );
  }
}
