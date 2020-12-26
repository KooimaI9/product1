import 'package:flutter/material.dart';
import 'package:flutter_app1/Domain/color_model.dart';
import 'package:flutter_app1/Domain/component.dart';
import 'package:flutter_app1/Domain/intializer.dart';
import 'package:provider/provider.dart';

class OffLinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    entireList.clear();
    horizontalList.clear();
    verticalList.clear();
    initializer();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                      child: Column(children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                      },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                      ),
                    ),
                        SizedBox(
                      height: 1,
                    ),
                  ])),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Offline Battle",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      SizedBox(
                        width: 5,
                  ),
                      Container(
                        width: 350,
                        decoration:
                        BoxDecoration(
                            border: Border.all(color: Colors.black87, width: 5)),
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Player1",
                                 style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                   fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                      SizedBox(
                    width: 5,
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: MultiProvider(
                providers: [
                  ChangeNotifierProvider<VerticalLineColorDataPro>(create: (context)=>VerticalLineColorDataPro()),
                  ChangeNotifierProvider<HorizontalLineColorDataPro>(create: (context)=>HorizontalLineColorDataPro()),
                  ChangeNotifierProvider<BoxColorDataPro>(create: (context)=>BoxColorDataPro()),
                ],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: entireList),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      SizedBox(
                        width: 5,
                  ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 5)),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                            child:
                            Text(
                              "Player2",
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                     SizedBox(
                       width: 5,
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 55,
              width: 350,
              color: Colors.pink,
            )
          ]),
        ),
      ),
    );
  }
}
