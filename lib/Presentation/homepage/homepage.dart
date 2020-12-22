import 'package:flutter/material.dart';
import '../accountpage/accountpage.dart';
import 'app_background.dart';
import '../offlinepage/offline.dart';
import '../onlinepage/online.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
                            child: Column(children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AccountPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ])),
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
                          width: 70,
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
                          splashColor: Colors.orange,
                          color: Colors.grey,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnLinePage()),
                            );
                          },
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
                          splashColor: Colors.orange,
                          color: Colors.grey,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OffLinePage()),
                            );
                          },
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
      ),
    );
  }
}
