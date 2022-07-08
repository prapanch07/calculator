import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  final String text;
  final int sized;
   final int fillcolor;
   Function callback;

   buttons({Key? key, 
    required this.text,
    required this.sized,
     required this.callback,
    required this.fillcolor
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 75,
      margin: const EdgeInsets.fromLTRB(18, 7, 7, 18),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(fillcolor),
        textColor: Color.fromARGB(255, 11, 253, 253),
        onPressed: (() {callback(text);}),
        child: Text(
          text,
          style: TextStyle(fontSize: sized.toDouble()),
        ),
      ),
    );
  }
}
