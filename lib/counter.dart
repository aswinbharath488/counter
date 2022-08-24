import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class counter extends StatefulWidget {
  const counter({Key? key}) : super(key: key);

  @override
  State<counter> createState() => _counterState();
}

int _counter = 0;

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("counter")),
      ),
      body: Center(child: Text(_counter.toString())),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter = _counter + 1;
            });
            print(_counter);
            ;
          }),
    );
  }
}
