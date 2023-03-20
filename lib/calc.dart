import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:function_tree/function_tree.dart';
class Calc{
  double operation;
  double number1;
  double number2;
  String text1;
  String text2;
  Calc(this.operation,this.number1,this.number2,this.text1,this.text2);
  add(num){
    text1=num.toString()+number1.toString();
    text2= num+number1;
  }
}

/*
String x = '9*2';
Parser p= Parser();
Expression exp = p.parse(x);
dynamic n = exp.evaluate(EvaluationType.REAL, context);*/
void main() {
  runApp(const MaterialApp(
    home: Ttt(),
  ));
}
class Ttt extends StatelessWidget {
  const Ttt ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
final expressions = '2 + 2';
print('${expressions.interpret()}');

return const Placeholder();
  }
}

