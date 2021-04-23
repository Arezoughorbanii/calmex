import 'package:flutter/material.dart';
import 'package:flutter_finalcalmexpert/ui/mAdsListView.dart';
import 'package:flutter_finalcalmexpert/ui/mlistview.dart';
import 'package:flutter_finalcalmexpert/ui/secondpage.dart';

import 'mtextview.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FirstPage> {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.width * .1,
                      left: screenSize.width * .028,
                      right: screenSize.width * .09),
                  //search field
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            new EdgeInsets.all(screenSize.width * .03),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0)),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.width * .04,
                        ),
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: 'search'),
                  ),
                ),
                //ads
                Container(
                  margin: EdgeInsets.only(
                      left: screenSize.width * .04,
                      top: screenSize.width * .03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Ads',
                        style: TextStyle(
                            color: Colors.orange[300],
                            fontSize: screenSize.width * .065),
                      ),
                      Text(
                        ' Relavant and promoted option',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: screenSize.width * .025),
                      ),
                    ],
                  ),
                ),
                //listview
                MadsListView(),
                MtextView(
                    txt1: ' Filter', txt2: ' what point are we starting from?'),
                MFilterlistView(),
                MtextView(
                    txt1: ' Service',
                    txt2: ' what point are we starting from?'),

                SizedBox(
                  height: screenSize.height * .02,
                ),
                Container(
                  width: screenSize.width * .15,
                  height: screenSize.width * .15,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage()),
                      );
                    },
                    child: Text(
                      'next page',
                      style: TextStyle(fontSize: screenSize.width * .028),
                    ),
                    backgroundColor: Colors.pink,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
