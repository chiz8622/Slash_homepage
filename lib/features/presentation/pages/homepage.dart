import 'package:flutter/material.dart';
import 'package:slash_homepage/features/presentation/components/categories.dart';
import 'package:slash_homepage/features/presentation/components/sector_and_items.dart';
import 'package:slash_homepage/features/presentation/components/footer.dart';
import 'package:slash_homepage/features/presentation/components/header.dart';
import 'package:slash_homepage/features/presentation/components/news.dart';
import 'package:slash_homepage/features/presentation/components/searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(area: "Nasr City", city: "Cairo"),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 75),
            child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  CustomSearchBar(),
                  News(),
                  Categories(),
                  SectorAndItems(sectionName: "Best Selling"),
                  SectorAndItems(sectionName: "New Arrival"),
                  SectorAndItems(sectionName: "Recommended for you"),
                ],
              ),
            ),
           ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Footer(),
          ),
        ],
      ),
    );
  }
}