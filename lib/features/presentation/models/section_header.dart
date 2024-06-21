import 'package:flutter/material.dart';

/// Model for the header of each section

class SectionHeader extends StatefulWidget {
  final String sectionName;

  const SectionHeader({
    super.key,
    required this.sectionName,
    });

  @override
  State<SectionHeader> createState() => _SectionHeaderState();
}

class _SectionHeaderState extends State<SectionHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.sectionName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Text("See all"),
            Container(
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Icon(Icons.arrow_right),
            ),
          ],
        ), 
      ],
    );
  }
}