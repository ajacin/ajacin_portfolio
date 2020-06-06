import 'package:flutter/material.dart';
import 'package:ajacin_portfolio/screens/app-shell.dart';

void main() {
  runApp(AjacinPortfolio());
}

class AjacinPortfolio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARUN JACOB',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AppShell(title: 'ARUN JACOB'),
    );
  }
}
