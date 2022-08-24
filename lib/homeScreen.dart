import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/counter.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

final _textcontroller = TextEditingController();
String _displaytext = "display";

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("appbar")),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: _textcontroller,
            ),
            ElevatedButton(
                onPressed: () {
                  print(_textcontroller.text);

                  setState(() {
                    _displaytext = _textcontroller.text;
                  });
                },
                child: Text("click")),
            Text(_displaytext)
          ],
        ),
      ),
    );
  }
}
