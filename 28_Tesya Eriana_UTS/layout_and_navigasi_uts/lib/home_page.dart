import 'package:flutter/material.dart';
import 'package:layout_and_navigasi_uts/item.dart';
import 'package:layout_and_navigasi_uts/item_page.dart';

class Home_Page extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Buah Mangga',
        price: 12000,
        stock: 200,
        image: 'mangga.jpg',
        rating: 4.5),
    Item(
        name: 'Anggur',
        price: 25000,
        stock: 200,
        image: 'anggur.jpg',
        rating: 5),
    Item(name: 'Apel', price: 12000, stock: 60, image: 'apel.jpg', rating: 5),
    Item(name: 'Jeruk', price: 15000, stock: 50, image: 'jeruk.jpg', rating: 5)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Item_Page(item: item),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                child: Column(
                  children: [
                    Hero(
                      tag: 'itemImage${item.name}',
                      child: Image.asset(
                        'assets/${item.image}',
                        height: 60,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        item.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.attach_money),
                              Text('Price: \ ${item.price.toString()}'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.inventory),
                              Text('Stock: ${item.stock.toString()}'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Text('Rating: ${item.rating.toString()}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
       bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Tesya Eriana - NIM: 2141720024',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
