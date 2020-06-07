import 'package:flutter/material.dart';
import 'package:ajacin_portfolio/store/counter/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AppShell extends StatefulWidget {
  AppShell({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppShellState createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  final colorArray = [
    0xff03071e,
    0xff6930c3,
    0xfffdfffc,
    0xff03071e,
    0xfffdfffc
  ];
  final _counterHandle = Counter();

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Ttem 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
              color: Color(colorArray[0]),
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1200),
                  child: Text(
                    'ARUN JACOB',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
            Container(
              color: Color(colorArray[1]),
            ),
            Container(
              color: Color(colorArray[2]),
            ),
            Container(
              color: Color(colorArray[3]),
            ),
            Container(
              color: Color(colorArray[4]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingButtons(counterHandle: _counterHandle),
    );
  }
}

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({
    Key key,
    @required Counter counterHandle,
  })  : _counterHandle = counterHandle,
        super(key: key);

  final Counter _counterHandle;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      FloatingActionButton(
        onPressed: _counterHandle.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Color(0xff72EDE0),
      ),
      SizedBox(
        height: 5,
      ),
      FloatingActionButton(
        onPressed: _counterHandle.decrementCounter,
        tooltip: 'Decrement',
        child: Icon(Icons.remove),
        backgroundColor: Color(0xff72EDE0),
      ),
    ]);
  }
}
