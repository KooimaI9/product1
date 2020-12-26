import 'package:flutter/cupertino.dart';
import 'color.dart';

class VerticalLineColorData {
  List<List<Color>> createVerticalLineColorData(){
    List<Color> _elementList = List.filled(6, lineDefaultColor);
    List<List<Color>> _verticalLineColorData = List.filled(7, _elementList);
    return _verticalLineColorData;
  }
}


class HorizontalLineColorData {
  List<List<Color>> createHorizontalLineColorData(){
    List<Color> _elementList = List.filled(7, lineDefaultColor);
    List<List<Color>> horizontalLineColorData = List.filled(6, _elementList);
    return horizontalLineColorData;
  }
}

class BoxColorData {
  List<List<Color>> createBoxColorData(){
    List<Color> _elementList = List.filled(6, boxDefaultColor);
    List<List<Color>> boxColorData = List.filled(6, _elementList);
    return boxColorData;
  }
}


class VerticalLineColorDataPro with ChangeNotifier {
  final color = VerticalLineColorData().createVerticalLineColorData();
  void changeColor(int x,int y,Color currentColor) {
    color[x][y] = currentColor;
    notifyListeners();
  }
}

class HorizontalLineColorDataPro with ChangeNotifier {
  final color = HorizontalLineColorData().createHorizontalLineColorData();
  void changeColor(int x,int y,Color currentColor) {
    color[x][y] = currentColor;
    notifyListeners();
  }
}

class BoxColorDataPro with ChangeNotifier {
  final color = BoxColorData().createBoxColorData();
  void changeColor(int x,int y,Color currentColor) {
    color[x][y] = currentColor;
    notifyListeners();
  }
}