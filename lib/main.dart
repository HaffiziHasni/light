import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool lightOn = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor:
            lightOn ? CupertinoColors.white : CupertinoColors.black,
        child: Center(
          child: CupertinoButton(
            child: Text('Hello, World'),
            onPressed: () {
              setState(() {
                lightOn = !lightOn;
                print('$lightOn');
              });
            },
          ),
        ),
      ),
    );
  }
}
