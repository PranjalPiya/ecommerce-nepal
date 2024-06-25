import 'package:flutter/material.dart';

Widget homeHeadSection() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Jonathan',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Let\'s go shopping',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.notifications_outlined),
          ],
        )
      ],
    ),
  );
}
