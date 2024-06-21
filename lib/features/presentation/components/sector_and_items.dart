import 'package:flutter/material.dart';
import 'package:slash_homepage/features/domain/models/item.dart';
import 'package:slash_homepage/features/domain/usecases/getItemsList.dart';
import 'package:slash_homepage/features/presentation/models/item.dart';
import 'package:slash_homepage/features/presentation/models/section_header.dart';

/// Display the sector name and the items belonging to each 
class SectorAndItems extends StatefulWidget {
  final String sectionName;
  const SectorAndItems({
    super.key,
    required this.sectionName,
  });

  @override
  State<SectorAndItems> createState() => _SectorAndItemsState();
}

class _SectorAndItemsState extends State<SectorAndItems> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(sectionName: widget.sectionName),
        SizedBox(
          height: 180,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder<List<Map<String, dynamic>>>(
            future: getItemsList(widget.sectionName),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text('No items found'));
              } else {
                List<Map<String, dynamic>> itemsList = snapshot.data!;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemsList.length,
                  itemBuilder: (context, index) {
                    return ItemUI(
                      data: Item (
                        id: itemsList[index]['id'],
                        name: itemsList[index]['name'],
                        price: itemsList[index]['price'],
                        image: itemsList[index]['image'],
                      ),
                    );
                  }
                );
              }
            }
          ), 
        ),
      ],
    );
  }
}