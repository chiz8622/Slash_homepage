import 'package:flutter/material.dart';


class PieceOfNews extends StatefulWidget {
  const PieceOfNews({super.key});

  @override
  State<PieceOfNews> createState() => _PieceOfNewsState();
}

class _PieceOfNewsState extends State<PieceOfNews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image(
          image: AssetImage('assets/images/news_img.jpg'),
        ),
      ),
    );
  }
}