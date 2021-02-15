import 'package:flutter/material.dart';

Widget ButtonPrimary(
    {double width = 250,
    double height = 48,
    String title = 'Título',
    @required Function onClick}) {
  TextStyle titleStyle =
      TextStyle(fontSize: 18, fontFamily: 'Source Sans', color: Colors.white);
  return Container(
    width: width,
    height: height,
    child: RaisedButton(
      color: Color(0xFF365DF0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onClick,
      child: Text(title, style: titleStyle),
    ),
  );
}

Widget ButtonDanger(
    {double width = 250,
    double height = 48,
    String title = 'Título',
    @required Function onClick}) {
  TextStyle titleStyle =
      TextStyle(fontSize: 18, fontFamily: 'Source Sans', color: Colors.white);
  return Container(
    width: width,
    height: height,
    child: RaisedButton(
      color: Color(0xFFF95E5A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onClick,
      child: Text(title, style: titleStyle),
    ),
  );
}
