import 'package:flutter/material.dart';

import 'package:homeflaw/screens/home_screen.dart';




class Filter1 extends StatefulWidget {
  Filter1({Key? key}) : super(key: key);

  @override
  State<Filter1> createState() => _Filter1State();
}

class _Filter1State extends State<Filter1> {
  GlobalKey<ScaffoldState> scaffoldkey1 = new GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> scaffoldkey2 = new GlobalKey<ScaffoldState>();
  List<String> listt = ['BUY', 'RENT'];
  int selectedIndexlist = 0;

  List range1 = ['0', 'Any'];
  int selectedIndexrange = 0;

  var city1;
  var agency;

  List range2 = [
    '0',
    '10,000',
    '20,000',
    '30,000',
    '40,000',
    '50,000',
    '60,000',
    '70,000',
    '80,000',
    '90,000',
    '1,00,000',
    '2,00,000',
    '3,00,000'
  ];
  int selectedIndexrange2 = 0;

  List range3 = [
    'Any',
    '10,000',
    '20,000',
    '30,000',
    '40,000',
    '50,000',
    '60,000',
    '70,000',
    '80,000',
    '90,000',
    '1,00,000',
    '2,00,000',
    '3,00,000'
  ];
  int selectedIndexrange3 = 0;

  List<String> homee1 = ['Residential', 'Plot', 'Commercial'];
  int selectedIndex1 = 0;

  List<String> widgets = ["Apartment", "Villa", "House", "Farm", "Other"];
  int selectedIndex2 = 0;
  var selects;
  List<String> bedroom = [
    'studio',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  String itms = "";
  List<String> bath = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  int selectedIndexbath = 0;
  int selectedIndexbed = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey1,
        appBar: AppBar(
          backgroundColor: Colors.white12,
          elevation: 0.0,
          title: Text("Filter", style: TextStyle(color: Colors.blue[200])),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Home1();
                }));
              },
              icon: Icon(
                Icons.west_sharp,
                color: Colors.blue[800],
              )),
        ),
        body: ListView(children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(10),
                    child: customRadiolist(listt[0], 0)),
                Container(
                    margin: EdgeInsets.all(10),
                    child: customRadiolist(listt[1], 1)),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade200, width: 2)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: Icon(Icons.maps_home_work),
                  hint: Text("Select City"),
                  items: [
                    "Al anbar",
                    "Baghdad",
                    "Basrah",
                    "Duhok",
                    "Erbil",
                    "Halabja shahid",
                    "Karbalah",
                    "Kirkuk",
                    "Nainawa",
                    "Nasiriah",
                    "Rania",
                    "Sulaymaniah",
                    "Zakho",
                  ]
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (String? val) {
                    setState(() {
                      city1 = val!;
                    });
                  },
                  value: city1,
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 10, bottom: 15, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.blue[400],
                ),
                Text("  Property Type"),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(5),
                    child: customRadio1(homee1[0], 0)),
                Container(
                    margin: EdgeInsets.all(5),
                    child: customRadio1(homee1[1], 1)),
                Container(
                    margin: EdgeInsets.all(5),
                    child: customRadio1(homee1[2], 2)),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadio2(widgets[0], 0, Icons.apartment)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadio2(widgets[1], 1, Icons.house)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadio2(widgets[2], 2, Icons.home_outlined)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadio2(
                          widgets[3], 3, Icons.maps_home_work_sharp)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadio2(widgets[4], 4, Icons.villa)),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(bottom: 20, top: 40, left: 10),
                child: Icon(
                  Icons.monetization_on_sharp,
                  color: Colors.blue[400],
                )),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 40, left: 5),
              child: Text(
                "Price Range",
                style: TextStyle(color: Colors.blue[800]),
              ),
            ),
          ]),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: Size(140, 40),
                          backgroundColor: Colors.grey[100]),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.indigo.withOpacity(0.7),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Sheet1();
                            });
                      },
                      child: Text(
                        "${range2[selectedIndexrange2]}",
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
                Text(
                  "To",
                  style: TextStyle(color: Colors.indigo),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: Size(140, 40),
                          backgroundColor: Colors.grey[100]),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.indigo.withOpacity(0.7),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Sheet1();
                            });
                      },
                      child: Text(
                        "${range3[selectedIndexrange3]}",
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(bottom: 20, top: 40, left: 10),
                child: Icon(Icons.bedroom_parent_outlined)),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 40, left: 5),
              child: Text(
                "Bedrooms",
                style: TextStyle(color: Colors.blue[800]),
              ),
            ),
          ]),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[0], 0)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[1], 1)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[2], 2)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[3], 3)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[4], 4)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[5], 5)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[6], 6)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[7], 7)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[8], 8)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[9], 9)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobed(bedroom[10], 10)),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.indigo[200],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(bottom: 20, top: 5, left: 10),
                child: Icon(Icons.bathroom_outlined)),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 5, left: 5),
              child: Text(
                "Bathrooms",
                style: TextStyle(color: Colors.blue[800]),
              ),
            ),
          ]),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[0], 0)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[1], 1)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[2], 2)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[3], 3)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[4], 4)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[5], 5)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[6], 6)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[7], 7)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[8], 8)),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: customRadiobath(bath[9], 9)),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.indigo[200],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(bottom: 20, top: 40, left: 10),
                child: Icon(Icons.aspect_ratio)),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 40, left: 5),
              child: Text(
                "Area Range",
                style: TextStyle(color: Colors.blue[800]),
              ),
            ),
          ]),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: Size(140, 40),
                          backgroundColor: Colors.grey[100]),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.indigo.withOpacity(0.7),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Sheet1();
                            });
                      },
                      child: Text(
                        "${range2[selectedIndexrange2]}",
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
                Text(
                  "To",
                  style: TextStyle(color: Colors.indigo),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minimumSize: Size(140, 40),
                          backgroundColor: Colors.grey[100]),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.indigo.withOpacity(0.7),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Sheet1();
                            });
                      },
                      child: Text(
                        "${range3[selectedIndexrange3]}",
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(bottom: 20, top: 40, left: 10),
                child: Icon(Icons.real_estate_agent_sharp)),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 40, left: 5),
              child: Text(
                "Agency",
                style: TextStyle(color: Colors.blue[800]),
              ),
            ),
          ]),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade200, width: 2)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Text("Select Agency"),
                  items: [
                    "Al anbar",
                    "Baghdad",
                    "Basrah",
                    "Duhok",
                    "Erbil",
                    "Halabja shahid",
                    "Karbalah",
                    "Kirkuk",
                    "Nainawa",
                    "Nasiriah",
                    "Rania",
                    "Sulaymaniah",
                    "Zakho",
                  ]
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (String? val) {
                    setState(() {
                      agency = val!;
                    });
                  },
                  value: agency,
                ),
              )),
        ]));
  }

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///

  void changeIndexlist(int indexlist) {
    setState(() {
      selectedIndexlist = indexlist;
    });
  }

  Widget customRadiolist(String txt, int indexlist) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          minimumSize: Size(160, 40),
          backgroundColor: selectedIndexlist == indexlist
              ? Colors.blue[300]
              : Colors.grey[100]),
      onPressed: () => changeIndexlist(indexlist),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexlist == indexlist
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  void changeIndex1(int index1) {
    setState(() {
      selectedIndex1 = index1;
    });
  }

  Widget customRadio1(String txt, int index1) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                  color: Colors.blue, width: 4, style: BorderStyle.solid)),
          // minimumSize: Size(40, 40),
          fixedSize: Size(110, 30),
          backgroundColor:
              selectedIndex1 == index1 ? Colors.blue[200] : Colors.white),
      onPressed: () => changeIndex1(index1),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndex1 == index1 ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  void changeIndex2(int index2) {
    setState(() {
      selectedIndex2 = index2;
    });
  }

  Widget customRadio2(String txt, int index2, IconData txt1) {
    return OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                    color: Colors.blue, width: 4, style: BorderStyle.solid)),
            fixedSize: Size(155, 30),
            backgroundColor:
                selectedIndex2 == index2 ? Colors.blue[200] : Colors.white),
        onPressed: () => changeIndex2(index2),
        icon: Icon(txt1),
        label: Text(
          txt,
          style: TextStyle(
              color: selectedIndex2 == index2 ? Colors.grey[200] : Colors.grey),
        ));
  }

  void changeIndexbed(int indexbed) {
    setState(() {
      selectedIndexbed = indexbed;
    });
  }

  Widget customRadiobed(String txt, int indexbed) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexbed == indexbed
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexbed(indexbed),
      child: Text(
        txt,
        style: TextStyle(
            color:
                selectedIndexbed == indexbed ? Colors.grey[200] : Colors.grey),
      ),
    );
  }

  void changeIndexbath(int indexbath) {
    setState(() {
      selectedIndexbath = indexbath;
    });
  }

  Widget customRadiobath(String txt, int indexbath) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(30, 40),
          backgroundColor: selectedIndexbath == indexbath
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexbath(indexbath),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexbath == indexbath
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

/*
  void changeIndexrange(int indexrang1) {
    setState(() {
      selectedIndexrange = indexrang1;
    });
  }

  Widget customRadiorange(String txt, int indexrang1) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          minimumSize: Size(140, 40),
          backgroundColor: Colors.grey[100]),
      onPressed: () {
        showModalBottomSheet(
            backgroundColor: Colors.indigo.withOpacity(0.7),
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Sheet1();
            });
      },
      child: Text(
        txt,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  */
}

class Sheet1 extends StatefulWidget {
  Sheet1({Key? key}) : super(key: key);

  @override
  State<Sheet1> createState() => _Sheet1State();
}

class _Sheet1State extends State<Sheet1> {
  List range2 = [
    '0',
    '10,000',
    '20,000',
    '30,000',
    '40,000',
    '50,000',
    '60,000',
    '70,000',
    '80,000',
    '90,000',
    '1,00,000',
    '2,00,000',
    '3,00,000'
  ];
  int selectedIndexrange2 = 0;

  List range3 = [
    'Any',
    '10,000',
    '20,000',
    '30,000',
    '40,000',
    '50,000',
    '60,000',
    '70,000',
    '80,000',
    '90,000',
    '1,00,000',
    '2,00,000',
    '3,00,000'
  ];
  int selectedIndexrange3 = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 6,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 25),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("MIN"),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  minimumSize: Size(120, 40),
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Text("${range2[selectedIndexrange2]}")),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 15),
                              width: 120,
                              height: 250,
                              color: Colors.white,
                              padding: EdgeInsets.all(10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    customRadiorange2(range2[0], 0),
                                    customRadiorange2(range2[1], 1),
                                    customRadiorange2(range2[2], 2),
                                    customRadiorange2(range2[3], 3),
                                    customRadiorange2(range2[4], 4),
                                    customRadiorange2(range2[5], 5),
                                    customRadiorange2(range2[6], 6),
                                    customRadiorange2(range2[7], 7),
                                    customRadiorange2(range2[8], 8),
                                    customRadiorange2(range2[9], 9),
                                    customRadiorange2(range2[10], 10),
                                    customRadiorange2(range2[11], 11),
                                    customRadiorange2(range2[12], 12),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("MAX"),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  minimumSize: Size(120, 40),
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Text("${range3[selectedIndexrange3]}")),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 15),
                              width: 120,
                              height: 250,
                              color: Colors.white,
                              padding: EdgeInsets.all(10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    customRadiorange3(range3[0], 0),
                                    customRadiorange3(range3[1], 1),
                                    customRadiorange3(range3[2], 2),
                                    customRadiorange3(range3[3], 3),
                                    customRadiorange3(range3[4], 4),
                                    customRadiorange3(range3[5], 5),
                                    customRadiorange3(range3[6], 6),
                                    customRadiorange3(range3[7], 7),
                                    customRadiorange3(range3[8], 8),
                                    customRadiorange3(range3[9], 9),
                                    customRadiorange3(range3[10], 10),
                                    customRadiorange3(range3[11], 11),
                                    customRadiorange3(range3[12], 12),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: OutlinedButton(
                    onPressed: () {
                      // Navigator.of(context).pop();

                      setState(() {
                        Navigator.of(context).pop();
                        ("${range2[selectedIndexrange2]}");
                      });
                    },
                    child: Text("Tab To Continue")),
              )
            ],
          ),
        ),
      ],
    );
  }

  void changeIndexrange2(int indexrange2) {
    setState(() {
      selectedIndexrange2 = indexrange2;
    });
  }

  Widget customRadiorange2(String txt, int indexrange2) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          minimumSize: Size(130, 40),
          backgroundColor: selectedIndexrange2 == indexrange2
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexrange2(indexrange2),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexrange2 == indexrange2
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }

  void changeIndexrange3(int indexrange3) {
    setState(() {
      selectedIndexrange3 = indexrange3;
    });
  }

  Widget customRadiorange3(String txt, int indexrange3) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          minimumSize: Size(130, 40),
          backgroundColor: selectedIndexrange3 == indexrange3
              ? Colors.indigo[400]
              : Colors.grey[100]),
      onPressed: () => changeIndexrange3(indexrange3),
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndexrange3 == indexrange3
                ? Colors.grey[200]
                : Colors.grey),
      ),
    );
  }
}
