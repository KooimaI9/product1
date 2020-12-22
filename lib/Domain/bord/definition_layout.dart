import 'package:flutter/material.dart';

//変数

//座標
List<int> listLoctation;

//　点の一辺
final double settingLength1 = 5;

//　箱の一辺
final double settingLength2 = 50;

//　点の色
final Color colors1 = Colors.black;

//　線の色＿デフォルト
Color colors2 = Colors.grey;

//　箱の色＿デフォルト
Color colors3 = Colors.white;

//　横向きの配列
List<Widget> verticalList = [];

//　縦向きの配列
List<Widget> horizontalList = [];

// 全体の配列
List<Widget> entireList = [];

// 要素の配列
List<Widget> elementList = [];

//Widget1

//点

class Point extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors1,
      height: settingLength1,
      width: settingLength1,
    );
  }
}

//縦線

class VerticalLine extends StatefulWidget {
  VerticalLine(this._navigationX,this._navigationY);
  final int _navigationX ;
  final int _navigationY ;
  @override
  _VerticalLineState createState() => _VerticalLineState();
}

class _VerticalLineState extends State<VerticalLine> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
        });
      },
      child: Container(
        color: colors2,
        height: settingLength2,
        width: settingLength1,
      ),
    );
  }
}

//横線

class HorizontalLine extends StatefulWidget {
  HorizontalLine(this._navigationX,this._navigationY);
  final int _navigationX;
  final int _navigationY;
  @override
  _HorizontalLineState createState() => _HorizontalLineState();
}

class _HorizontalLineState extends State<HorizontalLine> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {

        });
      },
      child: Container(
        color: colors2,
        height: settingLength1,
        width: settingLength2,
      ),
    );
  }
}

// 箱

class Box extends StatefulWidget {
  Box(this._navigationX,this._navigationY);
  final int _navigationX;
  final int _navigationY;
  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors3,
      height: settingLength2,
      width: settingLength2,
    );
  }
}

//Rowの定義

class RowWidget extends StatelessWidget {
  RowWidget(this.receiver);
  List receiver;
  @override
  Widget build(BuildContext context) {
    List element = receiver;
    return Row(
      children: element,
    );
  }
}
