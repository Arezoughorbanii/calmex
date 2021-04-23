import 'package:flutter/material.dart';

class MFilterlistView extends StatelessWidget {
  Size screenSize;
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: screenSize.height * .065,
          width: screenSize.width * .9,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: false,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: screenSize.height * .5,
                  width: screenSize.width * .3,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer,
                        size: screenSize.width * .075,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "5 - 13 min",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: screenSize.height * .5,
                  width: screenSize.width * .3,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: screenSize.height * .5,
                  width: screenSize.width * .3,
                  decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ],
          )),
    );
  }
}
