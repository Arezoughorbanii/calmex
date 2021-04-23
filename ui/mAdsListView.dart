import 'package:flutter/material.dart';

class MadsListView extends StatelessWidget {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: screenSize.width * .02),
      width: screenSize.width * .95,
      height: screenSize.height * .2,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(2, (index) {
            return new Container(
              margin: EdgeInsets.all(screenSize.width * .02),
              width: screenSize.width * .8,
              height: screenSize.height * .7,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(30),
              ),
              //imageplace and text
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //imageplace
                  Container(
                    margin: EdgeInsets.only(
                        top: screenSize.width * .045,
                        left: screenSize.width * .04),
                    width: screenSize.width * .18,
                    height: screenSize.width * .18,
                    decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  SizedBox(
                    width: screenSize.width * .02,
                  ),
                  //text
                  Container(
                    margin: EdgeInsets.only(
                        top: screenSize.width * .07,
                        left: screenSize.width * .02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Joe\'s Hire Stylist',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * .04,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: screenSize.width * .01,
                        ),
                        Text(
                          ' Relavant and promoted option',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * .025),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          })),
    );
  }
}
