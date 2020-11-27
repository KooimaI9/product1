import 'package:flutter/material.dart';

class accountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        child: Row(
          children: [
            SizedBox(
              width: 25,
            )
          ],
        ),
      ),
      Container(
        child: ButtonTheme(
          minWidth: 150,
          height: 75,
          child: RaisedButton(
            child: const Text(
              'return',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            color: Colors.yellow,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    ])));
  }
}
