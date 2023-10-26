import 'package:flutter/material.dart';
import 'package:layout_and_navigasi_uts/item.dart';

class Item_Page extends StatelessWidget {
  final Item item;

  Item_Page({required this.item});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(
          title: Text('Item Details'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag:  'itemImage${item.image}',
                child: Image.asset('assets/${item.image}',
                height: 300,
                ),
              ),
            SizedBox(height: 20),
            Text(
              'Item Name: ${item.name}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Item Price: \ ${item.price.toString()}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 24,
                ),
                Text(
                  'Item Rating : ${item.rating.toString()}',
                  style: TextStyle(fontSize: 18),
                )
              ],
            )
            ],
          ),
        ));
  }
}
