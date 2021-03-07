import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DzikirPagi extends StatefulWidget {
  @override
  _DzikirPagiState createState() => _DzikirPagiState();
}

class _DzikirPagiState extends State<DzikirPagi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dzikir Pagi"),
      ),
      body: Center(
        child: IconButton(
            icon: Icon(
              Icons.wb_sunny,
              size: 50.0,
              color: Colors.red,
            ),
            onPressed: () {}),
      ),
    );
  }
}
