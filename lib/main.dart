import 'package:flutter/material.dart';
import 'package:fluttepackage/packages/package1.dart';

void main() {
  runApp(const Package());
}

class Package extends StatefulWidget {
  const Package({Key? key}) : super(key: key);

  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Package'),
        ),
        body: Container(
          child: package(['usa.png', 'uk.png', 'kenya.png', 'indonesia.png'], 0.0, true, 3.0),
        ),
      ),
    );
  }
}
