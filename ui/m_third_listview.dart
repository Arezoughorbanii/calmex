import 'package:flutter/material.dart';

class MThirdListView extends StatelessWidget {
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
                width: screenSize.width * .65,
                height: screenSize.height * .7,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/originals/ac/90/1b/ac901ba5f74f8a8425c44b0bd2f0744d.jpg',
                    fit: BoxFit.cover,
                  ),
                ));
          })),
    );
  }
}
