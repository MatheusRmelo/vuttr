import 'package:flutter/material.dart';

Widget ToolBox(
    {double width = 200, double height = 150, @required Function onRemove}) {
  return Container(
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.all(8),
    width: width,
    height: height,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: Offset.fromDirection(20, 0),
              blurRadius: 25,
              color: Colors.grey[300])
        ]),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Notion'),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: onRemove,
              padding: EdgeInsets.zero,
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        ),
        Container(
          width: width,
          margin: EdgeInsets.only(top: 8),
          child: Text(
            '#web #framework',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}
