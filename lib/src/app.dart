import 'package:flutter/material.dart';
import 'package:goqrow3/src/widget/blueprint_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goqrow3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BlueprintWidget(),
    );
  }
}
