import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../../domain/models/item.dart';

class ItemUI extends StatefulWidget {
  final Item data;

  const ItemUI({
    super.key,
    required this.data,
  });

  @override
  State<ItemUI> createState() => _ItemUIState();
}

class _ItemUIState extends State<ItemUI> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: SizedBox(
                  width: 120,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image(
                      image: AssetImage(widget.data.image),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color.fromARGB(255, 231, 225, 225),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
          Text(
            widget.data.name,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          Row(
            children: [
              Text(
                "EGP ${widget.data.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Icon(Icons.circle),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.black,
                child: InkWell(
                  onTap: () {}, // ADD ITEM TO CART 
                  child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}