import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MtextView extends StatelessWidget {
  String txt1, txt2;
  MtextView({this.txt1, this.txt2});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            txt1,
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            txt2,
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
