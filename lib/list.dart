import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories;

  const CategoryList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CategoryButton(text: categories[index]),
          );
        },
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String text;

  const CategoryButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Define button action here
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        padding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 0), // Button padding
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 12),
      ),
    );
  }
}
