import 'package:flutter/material.dart';
import 'package:slash_homepage/features/data/footer_def.dart';
import 'package:slash_homepage/features/presentation/models/footer_icon.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  
  List<Map<String,dynamic>> footerList = footerDef;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width , 
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(), 
        scrollDirection: Axis.horizontal, 
        itemCount: 4,
        itemBuilder: (context, index) {
          return FooterIcon(
            icon: footerList[index]['icon'],
            name: footerList[index]['name'],
          );
        }
      ),
    );
  }
}