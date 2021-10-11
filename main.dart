import 'package:flutter/material.dart';

void main() => runApp(Main());

String display = "0";
bool solved = false;

class Main extends StatefulWidget {
  MainLayout createState() => new MainLayout();
}

class MainLayout extends State<Main> {
  void update(v1) {
    if (solved) {
      solved = false;
      clear();
    }
    if (v1 == "+" || v1 == "−" || v1 == "×" || v1 == "÷") {
      if (display.contains("+") || display.contains("−") || display.contains("×") || display.contains("÷")) { return; } 
    }
    if (display == "0") { setState(() => display = v1); }
    else { setState(() => display += v1); }
  }
  void backspace() {
    if (display != "0") {
      String result = display.substring(0, display.length - 1);
      setState(() => display = result);
    }
    if (display == "") { clear(); }
  }
  void clear() { setState(() => display = "0"); }
  void calculate() {
    var split = [];
    if (display.contains("+")) { 
      split = display.split("+");
      setState(() => display = (double.parse(split[0]) + double.parse(split[1])).toString());
    }
    else if (display.contains("−")) { 
      split = display.split("−");
      setState(() => display = (double.parse(split[0]) - double.parse(split[1])).toString());
    }
    else if (display.contains("×")) { 
      split = display.split("×");
      setState(() => display = (double.parse(split[0]) * double.parse(split[1])).toString());
    }
    else if (display.contains("÷")) { 
      split = display.split("÷");
      setState(() => display = (double.parse(split[0]) / double.parse(split[1])).toString());
    }
    solved = true;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 30,
              child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(
                  left: 40.0, 
                  right: 40.0,
                  top: 25.0,
                ),
                child: Text(
                  display,
                  style: new TextStyle(
                    fontSize: 42.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 70,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            child: Center(),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            child: Center(),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            child: Center(),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              backspace();
                            },
                            onLongPress: () {
                              clear();
                            },
                            child: Center(
                              child: Icon(Icons.backspace),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("7");
                            },
                            child: Center(
                              child: Text(
                                "7",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("8");
                            },
                            child: Center(
                              child: Text(
                                "8",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("9");
                            },
                            child: Center(
                              child: Text(
                                "9",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("÷");
                            },
                            child: Center(
                              child: Text(
                                "÷",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("4");
                            },
                            child: Center(
                              child: Text(
                                "4",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("5");
                            },
                            child: Center(
                              child: Text(
                                "5",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("6");
                            },
                            child: Center(
                              child: Text(
                                "6",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("×");
                            },
                            child: Center(
                              child: Text(
                                "×",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("1");
                            },
                            child: Center(
                              child: Text(
                                "1",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("2");
                            },
                            child: Center(
                              child: Text(
                                "2",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("3");
                            },
                            child: Center(
                              child: Text(
                                "3",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("−");
                            },
                            child: Center(
                              child: Text(
                                "−",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update(".");
                            },
                            child: Center(
                              child: Text(
                                ".",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("0");
                            },
                            child: Center(
                              child: Text(
                                "0",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              calculate();
                            },
                            child: Center(
                              child: Text(
                                "=",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: GestureDetector(
                            onTap: () {
                              update("+");
                            },
                            child: Center(
                              child: Text(
                                "+",
                                style: new TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
