import 'package:flutter/material.dart';

import '../partials/customappbar.dart';

import '../partials/inputs.dart';
import '../partials/buttons.dart';
import '../partials/toolbox.dart';

class HomeScreen extends StatelessWidget {
  TextStyle heading5 = TextStyle(
      fontSize: 24, fontFamily: 'Source Sans', fontWeight: FontWeight.bold);

  void removeTool(
      {@required BuildContext context,
      @required int index,
      double height = 250,
      double width = 450}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Remove tool',
                  style: heading5,
                ),
                IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 24,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
            content: Container(
              child: Text('Are you sure you want to remove json-server?'),
            ),
            actions: [
              ButtonPrimary(
                  onClick: () {}, width: 120, height: 32, title: 'Cancel'),
              ButtonDanger(
                  onClick: () {}, width: 120, height: 32, title: 'Yes, remove')
            ],
          );
        });
  }

  void addTool(
      {BuildContext context, double height = 250, double width = 450}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add new tool',
                  style: heading5,
                ),
                IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 24,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
            scrollable: true,
            content: Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 8, top: 8),
                          child: Text('Tool name'),
                        ),
                        Input(width: width),
                        Container(
                          margin: EdgeInsets.only(bottom: 8, top: 8),
                          child: Text('Tool link'),
                        ),
                        Input(width: width),
                        Container(
                          margin: EdgeInsets.only(bottom: 8, top: 8),
                          child: Text('Tool description'),
                        ),
                        TextArea(width: width),
                        Container(
                          margin: EdgeInsets.only(bottom: 8, top: 8),
                          child: Text('Tags'),
                        ),
                        Input(width: width)
                      ],
                    ),
                  ))
                ],
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 16),
                child: ButtonPrimary(
                    onClick: () {}, title: 'Add tool', width: 100, height: 40),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double widthDevide = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(pageContext: context),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SearchInput(width: widthDevide),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 16),
              width: widthDevide,
              height: heightDevice * 0.65,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, int index) => ToolBox(
                      width: widthDevide,
                      height: 160,
                      onRemove: () {
                        removeTool(context: context, index: index);
                      })),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addTool(
            context: context,
            height: heightDevice * 0.6,
            width: widthDevide * 0.8),
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}
