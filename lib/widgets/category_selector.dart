import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectorIndex = 0;
  final List<String> categories = ['訊息', '線上', '群組', '推播'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectorIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                categories[index],
                style: TextStyle(
                    color:
                        index == selectorIndex ? Colors.white : Colors.white60,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
            ),
          );
        },
      ),
    );
  }
}
