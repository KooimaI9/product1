import 'package:flutter/material.dart';

class offlinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 5)),
                  child: Row(
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
            height: 350,
            width: 350,
            color: Colors.greenAccent,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
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
    );
  }
}
