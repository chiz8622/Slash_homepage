import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

/// Displays the search bar

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 7, 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SearchBar(
                hintText: "Search here...",
                leading: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(width: 6), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:  const Color.fromARGB(255, 225, 221, 221),
              ),
              child: Icon(
                Icons.format_align_center_rounded,
                size:  kIsWeb ?  MediaQuery.of(context).size.width * 0.03 : MediaQuery.of(context).size.width * 0.08,
              ),
            ),
          ),
        ],
      ),
    );
  }
}