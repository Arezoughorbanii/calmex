import 'package:flutter/material.dart';
import 'package:flutter_finalcalmexpert/ui/mAdsListView.dart';
import 'package:flutter_finalcalmexpert/ui/m_routerlistview.dart';
import 'package:flutter_finalcalmexpert/ui/mlistview.dart';
import 'package:flutter_finalcalmexpert/ui/mtextview.dart';
import 'package:flutter_finalcalmexpert/ui/thirdpage.dart';

class SecondPage extends StatelessWidget {
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
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Container(
                            margin: EdgeInsets.all(screenSize.width * .02),
                            width: screenSize.width * .25,
                            decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.car_repair,
                                  size: screenSize.width * .08,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ), // icon is 48px widget.
                        ),
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
                //nearby
                MtextView(
                    txt1: ' Nearvy Now', txt2: ' Relavant and promoted option'),
                //listview nearby
                MadsListView(),
                //router
                MtextView(
                    txt1: ' Routers', txt2: ' Relavant and promoted option'),
                //listView Router
                MrouterListView(),
                SizedBox(
                  height: screenSize.height * .02,
                ),

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
                MadsListView(),
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
                        MaterialPageRoute(builder: (context) => ThirdPage()),
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
