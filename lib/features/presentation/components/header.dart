import 'package:flutter/material.dart';

/// Displays the header

// ignore: must_be_immutable
class Header extends StatefulWidget implements PreferredSizeWidget {
  String area;
  String city;

  Header({
    super.key,
    required this.area,
    required this.city,
  });

  @override
  State<Header> createState() => _HeaderState();

   @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 80,
      leading: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
            "Slash.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.location_on),
          Column(
            children: [
              Text(widget.area),
              Text(
                widget.city,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {}, //ADD IMPLEMENTATION
            icon: Icon(Icons.keyboard_arrow_down_rounded),
          ),
        ],
      ),
      actions: [
        IconButton(
         onPressed: () {}, //NAVIGATE 
         icon: Icon(
          Icons.notifications_none_rounded,
          size: 40,
          ),
        ),
      ], 
    );  
  }
}