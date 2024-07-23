import 'package:flutter/material.dart';

class for_other extends StatelessWidget {
  const for_other({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        title: const Text(
          'Top Up',
          style: TextStyle(color: Colors.white, fontSize: 18),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.orange[100],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/phone.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Top Up',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text('Enter phone number you want to top up for '),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                color: Colors.white,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    suffixIcon: Container(
                      padding: const EdgeInsets.all(
                          12.0), // Adjust the padding as needed
                      child: const Icon(
                        Icons.person_add,
                        color: Colors.orange,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 135, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
