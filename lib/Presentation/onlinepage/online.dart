import 'package:flutter/material.dart';

class OnLinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ButtonTheme(
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
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
