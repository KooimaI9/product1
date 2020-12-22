import 'definition_layout.dart';

//横向き配列初期化　&&　Rowに代入

void initializeVerticalList() {
  for (var i = 0; i < 13; i++) {
    if (i % 2 == 0) {
      horizontalList.add(settingPoint());
    } else {
      horizontalList.add(settingHorizontalLine());
    }
  }
}

//縦向き配列初期化　&&　Rowに代入

void initializeHorizontalList() {
  for (var i = 0; i < 13; i++) {
    if (i % 2 == 0) {
      verticalList.add(settingVerticalLine());
    } else {
      verticalList.add(settingBox());
    }
  }
}

//全体配列初期化

void initializeEntireList() {
  for (var i = 0; i < 13; i++) {
    if (i % 2 == 0) {
      entireList.add(settingHorizontalRow());
    } else {
      entireList.add(settingVerticalRow());
    }
  }
  ;
}
