import 'package:flutter/material.dart';
import 'package:flutter_finalcalmexpert/ui/m_third_listview.dart';
import 'package:flutter_finalcalmexpert/ui/mtextview.dart';

class ThirdPage extends StatelessWidget {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MThirdListView(),
          SizedBox(
            height: screenSize.height * .015,
          ),
          MtextView(
            txt1: 'New Service ',
            txt2: 'Relevant and promoted options',
          ),
          SizedBox(
            height: screenSize.height * .015,
          ),
          MtextView(
            txt1: 'Nearby Now ',
            txt2: 'Relevant and promoted options',
          ),
          SizedBox(
            height: screenSize.height * .015,
          ),
          MtextView(
            txt1: 'New Service ',
            txt2: 'Relevant and promoted options',
          ),
          SizedBox(
            height: screenSize.height * .015,
          ),
          MtextView(
            txt1: 'New Business ',
            txt2: 'Relevant and promoted options',
          ),
          SizedBox(
            height: screenSize.height * .015,
          ),
          MtextView(
            txt1: 'popular ',
            txt2: 'Relevant and promoted options',
          )
        ],
      ),
    );
  }
}
