import 'package:flutter/material.dart';

class FooterIcon extends StatefulWidget {
  final IconData icon;
  final String name;

  const FooterIcon({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  State<FooterIcon> createState() => _FooterIconState();
}

class _FooterIconState extends State<FooterIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        children: [
          IconButton(
            onPressed: () {}, //NAVIGATE
            icon: Icon(
              widget.icon,
              color: Colors.black,
              size: 30,
            ),
          ),
          Text (
            widget.name,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}