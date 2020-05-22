import 'package:flutter/material.dart';

class AbsorbPointerPractice extends StatelessWidget {
  static String name = 'AbsorbPointer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AbsorbPointer Practice"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Normal Button"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Red Button'),
                  color: Colors.red,
                  onPressed: () {
                    print('Red Button clicked!');
                  },
                ),
                RaisedButton(
                  child: Text('Green Button'),
                  color: Colors.green,
                  onPressed: () {
                    print('Green Button clicked!');
                  },
                ),
                RaisedButton(
                  child: Text('Blue Button'),
                  color: Colors.blue,
                  onPressed: () {
                    print('Blue Button clicked!');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Absorb Pointer True Button"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AbsorbPointer(

                  absorbing: true,
                  child: Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Red Button'),
                        color: Colors.red,
                        onPressed: () {
                          print('Red Button clicked!');
                        },
                      ),
                      RaisedButton(
                        child: Text('Green Button'),
                        color: Colors.green,
                        onPressed: () {
                          print('Green Button clicked!');
                        },
                      ),
                      RaisedButton(
                        child: Text('Blue Button'),
                        color: Colors.blue,
                        onPressed: () {
                          print('Green Button clicked!');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),

            SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Absorb Pointer False Button"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AbsorbPointer(
                  absorbing: false,
                  child: Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Red Button'),
                        color: Colors.red,
                        onPressed: () {
                          print('Red Button clicked!');
                        },
                      ),
                      RaisedButton(
                        child: Text('Green Button'),
                        color: Colors.green,
                        onPressed: () {
                          print('Green Button clicked!');
                        },
                      ),
                      RaisedButton(
                        child: Text('Blue Button'),
                        color: Colors.blue,
                        onPressed: () {
                          print('Blue Button clicked!');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}
