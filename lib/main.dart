import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:function_tree/function_tree.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Color color = Color(0xFF2f3740);
  ShapeBorder form = CircleBorder(eccentricity: 0.9);
  ShapeBorder form1 = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5), side: BorderSide.none);
  double number1 = 0;
  double number2 = 0;
  String text1 = " ";
  String text2 = " ";
  String operation = "+";
  String text_to_display = " ";
  ThemeData tm=ThemeData.light();

  Widget build(BuildContext context) {
    return MaterialApp(

      theme: tm,


    home:
      Scaffold(
     // backgroundColor: Color(0xFF2f3740),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Expanded(
              child: Material(
                elevation: 8,
                shadowColor: Color(0xFF2f3740),
                color: Color(0xFF2f3740),
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  // margin: EdgeInsets.only(top: 60,left: 400),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF2f3740),
                    //Color(0xFF2f3740),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          text_to_display,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Digital',
                              fontSize: 60),
                        ),
                        //SizedBox(height: 10,),
                        Text(text1,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Digital',
                                fontSize: 50))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        RowButton(
                            Icon(FontAwesomeIcons.rotateRight),
                            CircleBorder(
                                side: BorderSide.none, eccentricity: 0.0),
                            Color(0xFF2f3740),
                            true, () {
                          setState(() {
                            text_to_display = text_to_display.substring(
                                0, text_to_display.length - 1);
                          });
                        }),
                        SizedBox(
                          width: 10,
                        ),
                        RowButton(
                            Icon(FontAwesomeIcons.calculator),
                            CircleBorder(
                                side: BorderSide.none, eccentricity: 0.0),
                            color,
                            true,
                            () {}),
                        SizedBox(
                          width: 10,
                        ),
                        RowButton(Icon(FontAwesomeIcons.gear), form, color,
                            true, () {
                          setState(() {
                            if(tm==ThemeData.light()){
                              tm=ThemeData.dark();
                            }else{
                              tm=ThemeData.light();
                            }
                          });

                            }),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RowButton(
                            Icon(FontAwesomeIcons.close), form, color, true,
                            () {
                          SystemNavigator.pop();
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              crossAxisCount: 4,
              padding: EdgeInsets.all(15),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                ButtonContant(
                    Text(
                      "C",
                      style: TextStyle(fontFamily: 'Font', fontSize: 30),
                    ),
                    form1,
                    Colors.red.shade900, () {
                  setState(() {
                    text_to_display = " ";
                    text1 = " ";
                  });
                }),
                ButtonContant(
                    Text(
                      "1/2",
                      style: TextStyle(fontFamily: 'Font', fontSize: 30),
                    ),
                    form1,
                    Colors.blue.shade800, () {
                  setState(() {
                    //text1 = "1/2";
                    //text2;
                    text_to_display += "1/2";
                  });
                }),
                ButtonContant(
                    Text(
                      "%",
                      style: TextStyle(fontFamily: 'Font', fontSize: 30),
                    ),
                    form1,
                    Colors.blue.shade800, () {
                  setState(() {
                    text_to_display += "%";
                  });
                }),
                ButtonContant(
                    Text(
                      "÷",
                      style: TextStyle(fontFamily: 'Font', fontSize: 30),
                    ),
                    form,
                    Color(0xFF377f79), () {
                  setState(() {
                    text_to_display += "÷";
                  });
                }),
                ButtonContant(
                    Text(
                      "7",
                      style: TextStyle(fontFamily: 'Font', fontSize: 30),
                    ),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "7";
                  });
                }),
                ButtonContant(
                    Text(
                      "8",
                      style: TextStyle(fontFamily: 'Font', fontSize: 30),
                    ),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "8";
                  });
                }),
                ButtonContant(
                    Text("9",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "9";
                  });
                }),
                ButtonContant(
                    Text("×",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form,
                    Color(0xFF377f79), () {
                  setState(() {
                    text_to_display += "×";
                  });
                }),
                ButtonContant(
                    Text("4",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "4";
                  });
                }),
                ButtonContant(
                    Text("5",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "5";
                  });
                }),
                ButtonContant(
                    Text("6",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "6";
                  });
                }),
                ButtonContant(
                    Text("-",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form,
                    Color(0xFF377f79), () {
                  setState(() {
                    text_to_display += "-";
                  });
                }),
                ButtonContant(
                    Text("1",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "1";
                  });
                }),
                ButtonContant(
                    Text("2",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "2";
                  });
                }),
                ButtonContant(
                    Text("3",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "3";
                  });
                }),
                ButtonContant(
                    Text("+",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form,
                    Color(0xFF377f79), () {
                  setState(() {
                    text_to_display += "+";
                  });
                }),
                ButtonContant(
                    Text(
                      "0",
                      style: TextStyle(fontFamily: 'Font', fontSize: 60),
                    ),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += "0";
                  });
                }),
                ButtonContant(
                    Text(".",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form1,
                    Color(0xFF8585a1), () {
                  setState(() {
                    text_to_display += ".";
                  });
                }),
                SizedBox(
                  width: 50,
                ),
                ButtonContant(
                    Text("=",
                        style: TextStyle(fontFamily: 'Font', fontSize: 30)),
                    form,
                    Color(0xFFfad716), () {
                  String letter1 = text_to_display.replaceAll("÷", "/");

                  letter1 = letter1.replaceAll("×", "*");
                  print(letter1);
                  setState(() {
                    text1 = '${letter1.interpret()}';
                  });
                }),
              ],
            ),
          ),
        ],
      ),
      )
    );
  }
}

class RowButton extends StatelessWidget {
  RowButton(this.icon, this.form, this.color, this.ksize, this.tap);
  Widget icon;
  ShapeBorder form;
  Color color;
  bool ksize;
  VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: icon,
      shape: form,
      backgroundColor: color,
      mini: ksize,
      onPressed: tap,
    );
  }
}

class ButtonContant extends StatelessWidget {
  ButtonContant(this.icon, this.form, this.background, this.tap);
  Widget icon;
  ShapeBorder form;
  Color background;
  VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: 10,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: tap,
          child: icon,
          shape: form,
          backgroundColor: background,
        ),
      ),
    );
  }
}
