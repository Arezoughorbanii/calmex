import 'package:flutter/material.dart';

class MrouterListView extends StatelessWidget {
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://miro.medium.com/max/910/1*um9_wXb-KLerDbuqXI1NHg.gif',
                    fit: BoxFit.cover,
                  ),
                ));
          })),
    );
  }
}
