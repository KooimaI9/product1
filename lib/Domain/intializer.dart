import 'component.dart';

void initializer(){
  //縦線の座標
  int verticalX = 0 ;
  int verticalY = 0 ;
  //横線の座標
  int horizontalX = 0 ;
  int horizontalY = 0 ;
  //箱の座標
  int boxX = 0 ;
  int boxY = 0 ;
  for(var a = 0; a < 13; a++) {
    if (a % 2 == 0){
      for (var b = 0; b < 13; b++) {
        if (b % 2 == 0) {
          horizontalList.add(Point());
        } else {
          horizontalList.add(HorizontalLine(horizontalX,horizontalY,false));
          horizontalX ++ ;
        }
      }
      horizontalX = 0 ;
      horizontalY ++ ;
      horizontalList2 = [...horizontalList];
      entireList.add(RowWidget(horizontalList2));
      horizontalList.clear();
    }else{
       for (var b = 0; b < 13; b++) {
          if (b % 2 == 0) {
            verticalList.add(VerticalLine(verticalX,verticalY,true));
            verticalX ++ ;
          } else {
            verticalList.add(Box(boxX,boxY));
            boxX ++ ;
          }
        }
       verticalX = 0 ;
       verticalY ++ ;
       boxX = 0 ;
       boxY ++ ;
       verticalList2 = [...verticalList];
       entireList.add(RowWidget(verticalList2));
       verticalList.clear();
    }
  }
}