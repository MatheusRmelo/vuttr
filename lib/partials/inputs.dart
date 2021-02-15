import 'package:flutter/material.dart';

Widget Input({@required double width, String placeholder = 'Digite aqui...'}) {
  return Container(
    padding: EdgeInsets.only(left: 16),
    decoration: BoxDecoration(
        color: Color(0xFFF5F4F6), borderRadius: BorderRadius.circular(5)),
    width: width,
    child: TextField(
      cursorColor: Colors.black,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        focusedBorder: InputBorder.none,
        hintText: placeholder,
        border: InputBorder.none,
      ),
    ),
  );
}

Widget SearchInput({@required double width}) {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xFFF5F4F6), borderRadius: BorderRadius.circular(5)),
    width: width,
    child: TextField(
      cursorColor: Colors.black,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          hintText: 'Digite o que está procurando...',
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: Container(
              margin: EdgeInsets.only(right: 8),
              width: width * 0.2,
              child: GestureDetector(
                onTap: () {
                  print('ewq');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('only tags'),
                    Icon(
                      Icons.check,
                      color: Colors.black,
                    )
                  ],
                ),
              )),
          border: InputBorder.none),
    ),
  );
}

Widget TextArea(
    {@required double width, String placeholder = 'Digite aqui...'}) {
  return Container(
    padding: EdgeInsets.only(left: 16),
    decoration: BoxDecoration(
        color: Color(0xFFF5F4F6), borderRadius: BorderRadius.circular(5)),
    width: width,
    child: TextField(
      maxLines: 4,
      cursorColor: Colors.black,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        focusedBorder: InputBorder.none,
        hintText: placeholder,
        border: InputBorder.none,
      ),
    ),
  );
}
