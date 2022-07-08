import 'package:calc/buttons.dart';
import 'package:flutter/material.dart';

class butonPage extends StatefulWidget {
  const butonPage({Key? key}) : super(key: key);

  @override
  State<butonPage> createState() => _butonPageState();
}

class _butonPageState extends State<butonPage> {
   int a = 0;
   int b = 0;
  String his = '';
   String res = '';
 String operation = '';
   String display = '';

  void buttonclick(String buvalue) {
    print(buvalue);
    if (buvalue == "clear") {
      display = '';
      a = 0;
      b = 0;
      res = '';
    } else if (buvalue == '+' ||
        buvalue == '-' ||
        buvalue == 'x' ||
        buvalue == '/') {
      a = int.parse(display);
      res = '';
      operation = buvalue;
    } else if (buvalue == '=') {
      b = int.parse(display);
      if (operation == '+') {
        res = (a + b).toString();
        his = a.toString() + operation.toString() + b.toString();
      }
      if (operation == '-') {
        res = (a - b).toString();
        his = a.toString() + operation.toString() + b.toString();
      }
      if (operation == 'x') {
        res = (a * b).toString();
        his = a.toString() + operation.toString() + b.toString();
      }
      if (operation == '/') {
        res = (a / b).toString();
        his = a.toString() + operation.toString() + b.toString();
      } else {
        res = int.parse(display + buvalue).toString();
      }
    }

    setState(() {
      display = res;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 20, 20),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text("Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            width: 380,
            height: 90,
            color: const Color.fromARGB(255, 71, 67, 67),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        res,
                        style: TextStyle(
                            color: Color.fromARGB(255, 143, 141, 141),
                            fontSize: 20),
                      ),
                      Text(
                        display,
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              buttons(
                text: "1",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "2",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "3",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "x",
                sized: 30,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              )
            ],
          ),
          Row(
            children: [
              buttons(
                text: "6",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "5",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "4",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "+",
                sized: 35,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              )
            ],
          ),
          Row(
            children: [
              buttons(
                text: "7",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "8",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "9",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "-",
                sized: 40,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              )
            ],
          ),
          Row(
            children: [
              buttons(
                text: "clear",
                sized: 19,
                fillcolor: 0xFF212121,
                callback: buttonclick,
              ),
              buttons(
                text: "0",
                sized: 20,
                fillcolor: 0xFF212121,
                callback: buttonclick,
              ),
              buttons(
                text: "/",
                sized: 22,
                fillcolor: 0xFF000000,
                callback: buttonclick,
              ),
              buttons(
                text: "=",
                sized: 40,
                fillcolor: 0xFF212121,
                callback: buttonclick,
              )
            ],
          ),
        ],
      ),
    );
  }
}
