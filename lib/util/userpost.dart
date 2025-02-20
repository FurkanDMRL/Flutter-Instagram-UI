import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;

  UserPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.bookmark),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Linked by'),
              Text(
                'mitckoko',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and'),
              Text(
                'orthers',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: 'Furkan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'dfvsdjcbalkjvbkjladvbjabvjdafbvkjabdfvkjafdblvfav'),
                ],
              ),
            )),
      ],
    );
  }
}
