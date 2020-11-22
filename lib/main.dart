import 'package:flutter/material.dart';
import 'package:flutter_app1/app_background.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        AppBackground(),
        Center(
          child: Column(children: <Widget>[
            Container(
              height: 20,
              color: Colors.black87,
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: FittedBox(
                            fit: BoxFit.fill, child: Icon(Icons.person)),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        "ユーザー名",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 85,
                      ),
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: FittedBox(
                            fit: BoxFit.fill, child: Icon(Icons.help)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            ),
            Container(
              child: Column(children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 80,
                  width: 280,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      "Boxable",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  color: Colors.blueAccent,
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 35,
                ),
              ]),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 150,
                      height: 75,
                      child: RaisedButton(
                        child: const Text(
                          'online',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        color: Colors.orange,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ButtonTheme(
                      minWidth: 150,
                      height: 75,
                      child: RaisedButton(
                        child: const Text(
                          'offline',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        color: Colors.orange,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 70,
              color: Colors.pink,
            ),
          ]),
        ),
      ]),
    );
  }
}
