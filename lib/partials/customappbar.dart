import 'package:flutter/material.dart';

Widget CustomAppBar({@required BuildContext pageContext}) {
  TextStyle textLogoStyle = TextStyle(
      fontSize: 36, fontFamily: 'Source Sans Pro', color: Colors.black);
  double widthDevide = MediaQuery.of(pageContext).size.width;
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leadingWidth: widthDevide * 0.5,
    leading: Container(
      padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
      child: Text(
        'VUTTR',
        style: textLogoStyle,
      ),
    ),
  );
}
