import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: mquery(),
  ));
}
class mquery extends StatefulWidget {
  const mquery({Key? key}) : super(key: key);

  @override
  State<mquery> createState() => _mqueryState();
}

class _mqueryState extends State<mquery> {
  bool sh=false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double appbarhieght = kToolbarHeight;
    double statusbarheight = MediaQuery.of(context).padding.top;
    double bottombarheight = MediaQuery.of(context).padding.bottom;
    double bodyheight = height-appbarhieght-statusbarheight-bottombarheight;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: bodyheight,
        width: width,
      ),
    );
  }
}
