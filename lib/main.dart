import 'package:flutter/material.dart';
import 'package:to_do_test_01/calculutorState.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Calculator()
    );
  }
}

class Calculator extends StatefulWidget{
  @override
 CalculatorState createState() => CalculatorState();
  
}
