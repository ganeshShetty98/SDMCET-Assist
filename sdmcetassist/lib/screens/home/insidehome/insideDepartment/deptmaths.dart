import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sdmcetassist/shared/loading.dart';
import 'package:url_launcher/url_launcher.dart';

import 'fullscreen_image.dart';

class DeptMaths extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Department of Mathematics', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeptMathsAboutp1()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        size: 50.0,
                      ),
                      Text("About", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  //      Navigator.push(
                  //        context,
                  //      MaterialPageRoute(
                  //        builder: (context) => Administration()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        size: 50.0,
                      ),
                      Text("Faculty", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                                 Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TimeTable()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        size: 50.0,
                      ),
                      Text("Time Table", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  //        Navigator.push(context,
                  //              MaterialPageRoute(builder: (context) => Contacts()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.warning,
                        size: 50.0,
                      ),
                      Text("Notice", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Start of About Class
class DeptMathsAboutp1 extends StatelessWidget {
  const DeptMathsAboutp1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Department of Mathematics', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
      body: PageView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "Swipe Left for Additional link",
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "The department of Computer Science and Engineering is established in the year 1985. Currently one UG Programme with the intake of 120 and one PG Program with intake of 18 are running in Autonomous mode recogniged by VTU and UGC.The department has a research center, recognized by Visvesvaraya Technological University, Belgaum.The department has adopted OBE based Educational Philosophy since 2010 & transforming itself to drive practice based learning as its new learning model / initiatives for students, so that they are globally acceptable as a competent professionals with human values. To achieve this it has established its mission as stated below.\n\n1.To have contextually relevant Curricula.\n\n2.To promote effective Teaching Learning Practices supported by Modern Educational Tools and Techniques.\n\n3.To enhance Research Culture\n\n4.To involve the Industrial Expertise for connecting Classroom contents to real-life situations.\n\n5.To inculcate Ethics and soft-skills leading to overall personality development.\n\nFor any other information contact Head, Department of CSE @9448915301 / 0836-2328351 or email to upkulkarni@yahoo.com",
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Swipe Left for Additional link\n",
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {},
                      //splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "Additional Links",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  // fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1UhzW7aOdRBy949oSkphQ7yJoc5xGPJep/view?ts=5dadcda7');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "Vision, Mission, PEOs and POs",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1suo5nbDwZR3ulGhC7zvS2fuT9aBCTVG1/view?ts=5daddc3b');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "BoS, DUGC,DPGC & IQAC",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1F-Y-kxDBA7RTr13kuf9O8AX_Iv4tWhwl/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "UG: 175 Credits Syllabus",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1mmSTQpU9K6rePg-U_hK8cXxDkkwdN7dG/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "UG: 200 Credits Syllabus",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/16fZ-iktb4QUDU5V-iF7RLqJP1Y6osyp1/view?ts=5dba3360');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Achievers",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/16trN4czi8rpgj3vyTZxo01mq1Tp1GAgL/view?ts=5d940b20');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "e-News Letter ",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1n1U3FLf1_2Iu70Wh-fJUf5-iDlfhM4De/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Photo gallery",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://docs.google.com/forms/d/e/1FAIpQLSfqlSZUYeq7Cfh_DcisUUyb9cbdRIJHGjdjOCMk1VLwgKCftw/viewform');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "CSE E-Suggestion Box",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/15xadR1tehM9jef7PgWBrTa-gaM5nll_G/view?ts=5db2bda9');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Academic Calendar-UG and PG/ Holiday List",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1UhCP0W09mbD8eMynLNU6_0KjYB858ntn/view?ts=5da72ecb');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "MoUs",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1Ec0iJNlmVZqlb62VE1ux3Zl9rU9w3q4L/view?ts=5dd890b8');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Space and Infrastructure",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1x7tvsPYpFvzRNttSTl22MDDyGFcLqpTf/view?ts=5dd88fa0');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Research Center Details",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1Ysy105j0pA5QUiCuUXPDJBoatNvC71W2/view?ts=5da72c1a');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Placement Summary",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1Y_xosOPszGvXB-RkshDhn6LALwo5blX8/view?ts=5df82e5a');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Internship and Certification Details",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
//End Of About Class
//class time table

class TimeTable extends StatefulWidget {
  _TimeTable createState() => new _TimeTable();
}

class _TimeTable extends State<TimeTable> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
      Firestore.instance.collection("ISETimeTable");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        timeTable = datasnapshot.documents;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'Department of Mathematics', /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.blue[300],
          elevation: 10.0,
        ),
        body: timeTable != null
            ? new StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(9.0),
                crossAxisCount: 1,
                itemCount: timeTable.length,
                itemBuilder: (context, i) {
                  String imgPath = timeTable[i].data['url'];
                  return new Material(
                      elevation: 10.0,
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(50.0)),
                      child: new InkWell(
                        onTap: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    new FullScreenImagePage(imgPath))),
                        child: Hero(
                          tag: imgPath,
                          child: new FadeInImage(
                            placeholder: new AssetImage("assets/sdmlogo.jpg"),
                            image: new NetworkImage(imgPath),
                          ),
                        ),
                      ));
                },
                staggeredTileBuilder: (i) => new StaggeredTile.count(1, 1),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              )
            : new Loading());
  }
}
//end of class TimeTable
