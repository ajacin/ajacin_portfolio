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
  final _counterHandle = Counter();

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many timess:',
            ),
            Observer(
              builder: (context) => Text(
                '${_counterHandle.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _counterHandle.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}