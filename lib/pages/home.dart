import 'package:flutter/material.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/util/userpost.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'furkan',
    'ahmet',
    'samet',
    'memet',
    'hatice',
    'derviş',
    'fatma',
    'meryem',
    'zeynep',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
      body: Column(children: [
        Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                })),
        Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(name: people[index]);
                }))
      ]),
    );
  }
}
