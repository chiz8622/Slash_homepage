import 'package:flutter/material.dart';

/// Model for the category icons

class CategoryIcon extends StatefulWidget {
  final IconData icon;
  final String name;

  const CategoryIcon({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  State<CategoryIcon> createState() => _CategoryIconState();
}

class _CategoryIconState extends State<CategoryIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.only(left: 5, right: 5),
      child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
                child: IconButton(
                  onPressed: () {}, //NAVIGATE
                  icon: Icon(
                    widget.icon,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 3, bottom: 5),
              child: Text (
                widget.name,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ],
      ),
    );
  }
}