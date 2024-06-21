import 'package:flutter/material.dart';
import 'package:slash_homepage/features/data/categories_def.dart';
import 'package:slash_homepage/features/presentation/models/category_icon.dart';
import 'package:slash_homepage/features/presentation/models/section_header.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Map<String,dynamic>> categoriesList = categoriesDef;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(sectionName: "Categories"),
        SizedBox(
          height: 120,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              return CategoryIcon(
                icon: categoriesList[index]['icon'],
                name: categoriesList[index]['name'],
              );
            }
          ),
        ),
      ],
    );
  }
}