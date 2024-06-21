import 'package:flutter/material.dart';
import 'package:slash_homepage/features/presentation/models/piece_of_news.dart';

/// Displays the announcements or the news at the top of the page

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width - 20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return PieceOfNews();
        }
      ),
    );
  }
}