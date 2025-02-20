import 'package:flutter/material.dart';
import 'package:instagram/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color.fromARGB(255, 9, 75, 36),
        backgroundColor: Colors.grey[350],
        title: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shop',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(child: ShopGrid())
          ],
        ),
      ),
    );
  }
}
