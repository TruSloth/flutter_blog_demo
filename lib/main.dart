import 'package:flutter/material.dart';

void main() {
  runApp(Blog());
}

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.brown[400],
            body: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 280,
                    margin: EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.brown[900], width: 5),
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage('images/hakone_gate.jpg'),
                            fit: BoxFit.fitHeight))),
                Container(
                  height: 70,
                  margin: EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.yellow[100],
                      border: Border.all(color: Colors.brown[900], width: 2.5),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.brown[900], width: 2.0),
                            image: DecorationImage(
                                image: AssetImage('images/sloth.jpeg'),
                                alignment: Alignment(-0.75, -1.4),
                                scale: 2.5,
                                fit: BoxFit.none)),
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        width: 85,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: Text('A Random Sloth',
                                  style: TextStyle(
                                    fontFamily: 'UbuntuMono',
                                    fontWeight: FontWeight.bold,
                                  ))),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text('Treetop Animal',
                                  style: TextStyle(
                                      fontFamily: 'UbuntuMono',
                                      fontStyle: FontStyle.italic)))
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text('21 September 2020',
                              style: TextStyle(fontFamily: 'UbuntuMono')),
                          alignment: Alignment.centerRight,
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                    margin: EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                    color: Colors.yellow[100],
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.brown[900], width: 2.5),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Text('A Day In The Life Of A Sloth',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 5.0,
                                        color: Colors.grey[600])
                                  ],
                                  fontSize: 17.5,
                                  fontFamily: 'UbuntuMono',
                                  fontWeight: FontWeight.bold)),
                        ),
                        subtitle: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\n'
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontFamily: 'UbuntuMono', fontSize: 14.5)),
                      ),
                    )),
              ],
            )),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
                padding: EdgeInsets.all(0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                          backgroundColor: Colors.red[500],
                          child: Icon(Icons.favorite),
                          onPressed: null),
                      FloatingActionButton(
                          child: Icon(Icons.share), onPressed: null)
                    ]))));
  }
}
