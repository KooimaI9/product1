//data
// 一試合継続

//isLineAbleData
//　Line可能かどうかを表し、要素としては、true,falseを持つ
//　引ける、引けない
//　lineAble関数に呼ばれ、lineRequestが通るか

//  vertical
//要素数は、List[x][y]より、List[7][6]
class VerticalIsLineAbleData {
  List<List<bool>> createVerticalIsLineAbleData(){
    List<bool> _elementList = List.filled(6, false);
    List<List<bool>> _verticalIsLineAbleData = List.filled(7, _elementList);
    return _verticalIsLineAbleData;
 }
 VerticalIsLineAbleData(){
    createVerticalIsLineAbleData();
 }
}

//  horizontal
//要素数は、List[x][y]より、List[6][7]
class HorizontalIsLineAbleData {
  List<List<bool>> createHorizontalIsLineAbleData(){
    List<bool> _elementList = List.filled(7,false);
    List<List<bool>> _horizontalIsLineAbleData = List.filled(6,_elementList);
    return _horizontalIsLineAbleData;
  }
  HorizontalIsLineAbleData(){
    createHorizontalIsLineAbleData();
  }
}

//LineLineIsOwnerData
// Lineが誰に所有されているかを表し、要素としては、０、１、２、３、を持つ
// 所有者なし、所有者player1,所有者player1,双方所有
// boxable関数、Lineの染色

//  vertical
//要素数は、List[x][y]より、List[7][6]
class VerticalLineOwnerData {
  List<List<int>> createVerticalLineOwnerData(){
    List<int> _elementList = List.filled(6,0);
    List<List<int>> _verticalLineOwnerData = List.filled(7,_elementList);
    return _verticalLineOwnerData;
  }
  VerticalLineOwnerData(){
    createVerticalLineOwnerData();
  }
}

//  horizontal
//要素数は、List[x][y]より、List[6][7]
class HorizontalLineOwnerData {
  List<List<int>> createHorizontalLineOwnerData(){
    List<int> _elementList = List.filled(7,0);
    List<List<int>> _horizontalLineOwnerData = List.filled(6,_elementList);
    return _horizontalLineOwnerData;
  }
  HorizontalLineOwnerData(){
    createHorizontalLineOwnerData();
  }
}

//BoxIsOwnerData
// Boxが誰に所有されているかを表し、要素としては、０、１、２、を持つ
// 所有者なし、所有者player1,所有者player1,
// lineColored関数、Boxの染色

//要素数は、List[x][y]より、List[6][6]
class BoxOwnerData {
  List<List<int>> createBoxOwnerData(){
    List<int> _elementList = List.filled(6,0);
    List<List<int>> _boxOwnerData = List.filled(6,_elementList);
    return _boxOwnerData;
  }
  BoxOwnerData(){
    createBoxOwnerData();
  }
}



