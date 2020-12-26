import 'package:flutter/material.dart';
import 'package:flutter_app1/Domain/color_model.dart';
import 'package:provider/provider.dart';

import 'function.dart';

//変数

//座標
List<int> listLoctation;

//　点の一辺
final double settingLength1 = 5;

//　箱の一辺
final double settingLength2 = 50;


Color colors1 = Colors.black;

//　線の色＿デフォルト
Color colors2 = Colors.grey;

//　箱の色＿デフォルト
Color colors3 = Colors.white;

//　箱の色＿デフォルト
Color colors4 = Colors.blue;

//　横向きの配列
List<Widget> verticalList = [];

//　横向きの配列2
List<Widget> verticalList2 = [];

//　縦向きの配列
List<Widget> horizontalList = [];

//　縦向きの配列2
List<Widget> horizontalList2 = [];

// 全体の配列
List<Widget> entireList = [];

// 全体の配列2
List<Widget> entireList2 = [];

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

class VerticalLine extends StatelessWidget {
  VerticalLine(this._navigationX,this._navigationY,this._verticalOrHorizontal);
  final int _navigationX ;
  final int _navigationY ;
  final bool _verticalOrHorizontal;
  bool _lineAble = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Provider.of<VerticalLineColorDataPro>(context, listen: false).changeColor(_navigationX, _navigationY, Colors.amber);
        print (_navigationX);
        print (_navigationY);
      },
      child: Container(
        color: Provider.of<VerticalLineColorDataPro>(context).color[_navigationX][_navigationY],
        height: settingLength2,
        width: settingLength1,
      ),
    );
  }
}

//横線

class HorizontalLine extends StatelessWidget {
  HorizontalLine(this._navigationX,this._navigationY,this._verticalOrHorizontal);
  final int _navigationX;
  final int _navigationY;
  final bool _verticalOrHorizontal;
  bool _lineAble = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<HorizontalLineColorDataPro>(context, listen: false).changeColor(_navigationX, _navigationY, Colors.amber);
        print (_navigationX);
        print (_navigationY);
      },
      child: Container(
        color: Provider.of<HorizontalLineColorDataPro>(context).color[_navigationX][_navigationY],
        height: settingLength1,
        width: settingLength2,
      ),
    );
  }
}



// 箱

class Box extends StatelessWidget {
  Box(this._navigationX,this._navigationY);
  final int _navigationX;
  final int _navigationY;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Provider.of<BoxColorDataPro>(context).color[_navigationX][_navigationY],
      height: settingLength2,
      width: settingLength2,
    );
  }
}


//Rowの定義

class RowWidget extends StatelessWidget {
  RowWidget(this.element);
  final List element;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: element,
    );
  }
}
