import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

String _selectedIconPack = 'Default logo';

class _settingState extends State<setting> {
  String _appearance = 'Light';
  String _selectedIconPack = 'Default logo';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Text(
              'General',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
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
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'images/p1.jpeg',
                              width: 17,
                              height: 17,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Change Language',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.blue,
                            size: 14,
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
                              'images/z36.png',
                              width: 17,
                              height: 17,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Chnage Password Login',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.blue,
                            size: 14,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Text(
              'Appearance',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                // height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildAppearanceOption('Light', 'images/p1.jpeg'),
                      _buildAppearanceOption('Dark', 'images/p1.jpeg'),
                      _buildAppearanceOption('Auto', 'images/p1.jpeg'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 17,
              right: 17,
            ),
            child: Text(
              'Icon Pack',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                height: 120,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildIconPackOption('Default', 'logo', 'images/p1.jpeg'),
                      _buildIconPackOption(
                          'Chinese ', 'New Year', 'images/q5.jpg'),
                      _buildIconPackOption(
                          'Khmer', ' New Year', 'images/p1.jpeg'),
                      _buildIconPackOption('Pchum ', 'Ben', 'images/p1.jpeg'),
                      _buildIconPackOption(
                          'Water ', 'Festival', 'images/p1.jpeg'),
                      _buildIconPackOption('Christam ', 's', 'images/z38.png'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconPackOption(
      String topLabel, String bottomLabel, String assetPath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIconPack = '$topLabel $bottomLabel';
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 8.0), // Add horizontal padding
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _selectedIconPack == '$topLabel $bottomLabel'
                        ? Colors.blue
                        : Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      assetPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  topLabel,
                  style: TextStyle(
                    color: _selectedIconPack == '$topLabel $bottomLabel'
                        ? Colors.blue
                        : Colors.black,
                    fontSize: 11,
                  ),
                ),
                Text(
                  bottomLabel,
                  style: TextStyle(
                    color: _selectedIconPack == '$topLabel $bottomLabel'
                        ? Colors.blue
                        : Colors.black,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppearanceOption(String label, String imagePath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _appearance = label;
        });
      },
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: _appearance == label
                    ? Colors.blue
                    : const Color.fromRGBO(238, 238, 238, 1),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.medium,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                _appearance == label
                    ? Icons.check_circle
                    : Icons.circle_outlined,
                color: _appearance == label ? Colors.blue : Colors.grey,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(label),
            ],
          ),
        ],
      ),
    );
  }
}
