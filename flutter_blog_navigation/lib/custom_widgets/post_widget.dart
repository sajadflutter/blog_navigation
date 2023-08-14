import 'package:flutter/material.dart';

Widget getBlogPost(
    {required String imagename,
    required String title,
    required String target1,
    required String target2}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Image(
          image: AssetImage('images/$imagename'),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.price_check,
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$target1',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(
            width: 60,
          ),
          Icon(
            Icons.sell,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$target2',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
      Container(
        width: 250,
        child: Divider(
          color: Colors.grey,
          thickness: 1,
        ),
      ),
    ],
  );
}
